{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.services.darwin-wallpaper;
in {
  options = {
    services.darwin-wallpaper.file = mkOption {
      type = with types; nullOr path;
      default = null;
      description = "Path to image for wallpaper";
    };
  };

  config = mkIf (cfg.file != null) {
    assertions = with lib; [
      (hm.assertions.assertPlatform "services.darwin-wallpaper" pkgs platforms.darwin)
    ];

    home.activation = {
      setDarwinWallpaper = lib.hm.dag.entryAfter ["writeBoundary"] ''
        osascript -e 'tell application "Finder" to set desktop picture to "${cfg.file}" as POSIX file'
      '';
    };
  };
}
