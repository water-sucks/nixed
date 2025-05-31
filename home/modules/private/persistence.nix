# Thin passthrough module for the NixOS impermanence module to use
# bind mounting instead of home-manager's bindfs with FUSE.
{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.persistence;
in {
  options.persistence = {
    directories = lib.mkOption {
      # This may need refactoring if custom options are desired.
      type = with lib.types; listOf str;
      default = [];
      description = "Directories to persist for this user";
    };

    files = lib.mkOption {
      # This may need refactoring if custom options are desired.
      type = with lib.types; listOf str;
      default = [];
      description = "Files to persist for this user";
    };
  };

  config = {
    assertions = with lib;
      lib.optionals (cfg.directories != [] || cfg.files != []) [
        (hm.assertions.assertPlatform "persistence" pkgs platforms.linux)
      ];
  };
}
