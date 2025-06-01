{
  config,
  pkgs,
  lib,
  ...
}: let
  cfg = config.homebrew;
in {
  options.homebrew = {
    casks = lib.mkOption {
      description = "Casks to install in nix-darwin";
      type = with lib.types; listOf (either str attrs);
      default = [];
    };
    brews = lib.mkOption {
      description = "Formulas to install in nix-darwin";
      type = with lib.types; listOf (either str attrs);
      default = [];
    };
  };

  config = {
    assertions = with lib;
      mkIf (cfg.casks != [] || cfg.brews != []) [
        (hm.assertions.assertPlatform "homebrew" pkgs platforms.darwin)
      ];
  };
}
