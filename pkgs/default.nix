{
  self,
  lib,
  ...
}: let
  inherit (self.lib) filterPackages;

  callPackage = pkgs: path: args: let
    sources = pkgs.callPackage _sources/generated.nix {};
  in
    pkgs.callPackage path ({inherit sources;} // args);

  packages' = {
    airtame = ./applications/misc/airtame;

    nerdfetch = ./applications/misc/nerdfetch;

    rescrobbled = ./tools/audio/rescrobbled;

    waybar-mpris = ./misc/waybar-mpris;

    get-appname = ./tools/get-appname;

    nsmb-mvl = ./games/nsmb-mvl;
  };

  nodePkgs' = pkgs: let
    nodePkgs = pkgs.callPackage ./development/node-packages {};
  in {
    inherit (nodePkgs) emmet-ls;

    tailwind-ls = nodePkgs."@tailwindcss/language-server";
  };
in {
  perSystem = {
    pkgs,
    system,
    ...
  }: let
    nodePkgs = nodePkgs' pkgs;
  in {
    packages =
      filterPackages system ((lib.mapAttrs (_: v: callPackage pkgs v {}) packages')
        // nodePkgs);
  };

  flake.overlays = {
    default = _final: prev: let
      nodePkgs = nodePkgs' prev;
    in
      (lib.mapAttrs (_: v: callPackage prev v {}) packages')
      // {
        formats = (import ./pkgs-lib {inherit (prev) lib pkgs;}).formats // prev.formats;
      }
      // nodePkgs;
  };
}
