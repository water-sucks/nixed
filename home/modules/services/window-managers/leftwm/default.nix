{
  config,
  pkgs,
  lib,
  ...
}:
with lib; let
  cfg = config.xsession.windowManager.leftwm;

  tomlFormat = pkgs.formats.toml {};
in {
  options.xsession.windowManager.leftwm = {
    enable = mkEnableOption "LeftWM window manager";

    settings = mkOption {
      inherit (tomlFormat) type;
      default = {};
      description = "Nixified LeftWM configuration (not validated)";
    };

    theme = mkOption {
      inherit (tomlFormat) type;
      default = {};
      description = "Nixified LeftWM theme configuration (not validated)";
    };

    up = mkOption {
      type = types.lines;
      default = "";
      description = "Theme-agnostic up script";
    };

    down = mkOption {
      type = types.lines;
      default = "";
      description = "Theme-agnostic down script";
    };
  };

  config = mkIf cfg.enable {
    assertions = with lib; [
      (hm.assertions.assertPlatform "wayland.windowManager.hikari" pkgs platforms.linux)
    ];

    home.packages = [pkgs.leftwm];

    xdg.configFile = {
      "leftwm/config.toml" = mkIf (cfg.settings != {}) {
        source = tomlFormat.generate "leftwm-config" cfg.settings;
      };
      "leftwm/themes/current/theme.toml" = mkIf (cfg.settings != {}) {
        source = tomlFormat.generate "leftwm-theme" cfg.theme;
      };

      # Manually written so that shebang can pass through
      "leftwm/themes/current/up" = mkIf (cfg.up != "") {
        source = pkgs.writeTextFile {
          name = "up.sh";
          text = cfg.up;
          executable = true;
        };
      };
      "leftwm/themes/current/down" = mkIf (cfg.down != "") {
        source = pkgs.writeTextFile {
          name = "down.sh";
          text = cfg.down;
          executable = true;
        };
      };
    };
  };
}
