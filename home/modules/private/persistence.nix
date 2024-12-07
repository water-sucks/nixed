# Thin passthrough module for the NixOS impermanence module to use
# bind mounting instead of home-manager's bindfs with FUSE.
{lib, ...}: {
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
}
