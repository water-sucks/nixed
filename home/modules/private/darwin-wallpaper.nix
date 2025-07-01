{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.services.darwin-wallpaper;

  desktoppr = "/usr/local/bin/desktoppr";
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

    homebrew.casks = ["desktoppr"];

    home.activation = {
      setDarwinWallpaper = lib.hm.dag.entryAfter ["writeBoundary"] ''
        ${desktoppr} "${cfg.file}"
      '';
    };
  };
}
