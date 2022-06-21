{ config, lib, ... }:

with lib;

let
  cfg = config.system.defaults.wallpaper;
in
{
  options = {
    system.defaults.wallpaper.file = mkOption {
      type = with types; nullOr path;
      default = null;
      description = "Path to image for wallpaper";
    };
  };

  config = mkIf (cfg.file != null) {
    system.activationScripts.extraUserActivation.text = ''
      echo "setting wallpaper..."
      osascript -e 'tell application "Finder" to set desktop picture to POSIX file "${cfg.file}"'
    '';
  };
}
