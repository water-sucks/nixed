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
    # mvnHash keeps changing, so this is disabled for now.
    # java-debug = ./development/java-debug;

    get-appname = ./tools/get-appname;

    nsmb-mvl = ./games/nsmb-mvl;

    berkeley-mono = ./fonts/berkeley-mono;
  };
in {
  perSystem = {
    pkgs,
    system,
    ...
  }: {
    packages =
      filterPackages system (lib.mapAttrs (_: v: callPackage pkgs v {}) packages');
  };

  flake.overlays = {
    default = _final: prev:
      (lib.mapAttrs (_: v: callPackage prev v {}) packages')
      // {
        formats = (import ./pkgs-lib {inherit (prev) lib pkgs;}).formats // prev.formats;
      };
  };
}
