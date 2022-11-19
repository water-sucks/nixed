{
  self,
  lib,
  ...
}: let
  callPackage = pkgs: path: args: let
    sources = pkgs.callPackage _sources/generated.nix {};
  in
    pkgs.callPackage path ({inherit sources;} // args);

  packages' = {
    airtame = ./applications/misc/airtame;

    filen-desktop = ./applications/networking/filen-desktop;

    lswt = ./tools/wayland/lswt;

    nerdfetch = ./applications/misc/nerdfetch;

    plymouth-spinning-watch-theme = ./applications/misc/plymouth-spinning-watch-theme;

    rescrobbled = ./tools/audio/rescrobbled;

    waybar-mpris = ./misc/waybar-mpris;

    waylock = ./misc/screensavers/waylock;
  };
in {
  perSystem = {pkgs, ...}: {
    packages = lib.mapAttrs (n: v: callPackage pkgs v {}) packages';
  };

  flake.overlays = {
    default = final: prev:
      (lib.mapAttrs (n: v: callPackage prev v {}) packages')
      // {
        formats = (import ./pkgs-lib {inherit (prev) lib pkgs;}).formats // prev.formats;
      };
  };
}
