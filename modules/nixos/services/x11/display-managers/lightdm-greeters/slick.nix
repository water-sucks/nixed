{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  ldmcfg = config.services.xserver.displayManager.lightdm;
  cfg = ldmcfg.greeters.slick;

  theme = cfg.theme.package;
  icons = cfg.iconTheme.package;
  font = cfg.font.package;
in rec {
  options = {
    services.xserver.displayManager.lightdm.greeters.slick = {
      enable = mkEnableOption "LightDM slick greeter";

      activateNumlock = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to activate numlock. This features requires the installation of numlockx.
        '';
        apply = boolToString;
      };

      backgroundColor = mkOption {
        type = types.str;
        default = "#000000";
        description = ''
          Background color (e.g. #772953), set before wallpaper is seen.
        '';
      };

      drawUserBackgrounds = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to draw user backgrounds.
        '';
        apply = boolToString;
      };

      drawGrid = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to draw an overlay grid.
        '';
        apply = boolToString;
      };

      showHostname = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to show the hostname in the menubar.
        '';
        apply = boolToString;
      };

      showPower = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to show the power indicator in the menubar.
        '';
        apply = boolToString;
      };

      showAccessibility = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to show the accessibility options in the menubar.
        '';
        apply = boolToString;
      };

      showKeyboard = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to show the keyboard indicator in the menubar.
        '';
        apply = boolToString;
      };

      showClock = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to show the clock in the menubar.
        '';
        apply = boolToString;
      };

      showQuit = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to show the quit menu in the menubar.
        '';
        apply = boolToString;
      };

      logo = mkOption {
        type = types.str;
        default = "";
        description = ''
          Logo file to use.
        '';
      };

      otherMonitorsLogo = mkOption {
        type = types.str;
        default = "";
        description = ''
          Logo file to use for other monitors.
        '';
      };

      theme = {
        name = mkOption {
          type = types.str;
          default = "Adwaita";
          description = ''
            Name of the theme to use for the lightdm-slick-greeter.
          '';
        };

        package = mkOption {
          type = types.package;
          default = pkgs.gnome.gnome-themes-extra;
          description = ''
            The package path that contains the theme given in the name option.
          '';
        };
      };

      iconTheme = {
        name = mkOption {
          type = types.str;
          default = "Adwaita";
          description = ''
            Name of the icon theme to use for the lightdm-slick-greeter.
          '';
        };

        package = mkOption {
          type = types.package;
          default = pkgs.gnome.adwaita-icon-theme;
          description = ''
            The package path that contains the theme given in the name option.
          '';
        };
      };

      font = {
        name = mkOption {
          type = types.str;
          default = "Ubuntu 11";
          description = ''
            Name of the font to use.
          '';
        };

        package = mkOption {
          type = types.package;
          default = pkgs.ubuntu_font_family;
          description = ''
            The package path that contains the font given in the name option.
          '';
        };
      };

      xftAntialias = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether to antialias Xft fonts.
        '';
        apply = boolToString;
      };

      xftDPI = mkOption {
        type = types.int;
        default = 96;
        description = ''
          Resolution for Xft in dots per inch.
        '';
        apply = builtins.toString;
      };

      xftHintStyle = mkOption {
        type = types.enum [
          "hintnone"
          "hintslight"
          "hintmedium"
          "hintfull"
        ];
        default = "hintslight";
        description = ''
          What degree of hinting to use.
        '';
      };

      xftRgba = mkOption {
        type = types.enum [
          "none"
          "rgb"
          "bgr"
          "vrgb"
          "vbgr"
        ];
        default = "rgb";
        description = ''
          Type of subpixel antialiasing.
        '';
      };

      onscreenKeyboard = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to enable the onscreen keyboard.
        '';
        apply = boolToString;
      };

      highContrast = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to use a high contrast theme.
        '';
        apply = boolToString;
      };

      screenReader = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to enable the screen reader.
        '';
        apply = boolToString;
      };

      playReadySound = mkOption {
        type = types.str;
        default = "";
        description = ''
          A sound file to play when the greeter is ready.
        '';
      };

      hiddenUsers = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          List of usernames that are hidden until a special key combination is hit.
        '';
      };

      groupFilter = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          List of groups that users must be part of to be shown (empty list shows all users).
        '';
      };

      enableHiDPI = mkOption {
        type = types.enum [
          "on"
          "off"
          "auto"
        ];
        default = "auto";
        description = ''
          Whether to enable HiDPI support.
        '';
      };

      onlyOnMonitor = mkOption {
        type = types.str;
        default = "auto";
        description = ''
          The monitor on which to show the login window.
          -1 means "follow the mouse."
        '';
      };

      stretchBackgroundAcrossMonitors = mkOption {
        type = types.bool;
        default = false;
        description = ''
          hether to stretch the background across multiple monitors.
        '';
        apply = boolToString;
      };

      clockFormat = mkOption {
        type = types.str;
        default = "%H:%M";
        description = ''
          What clock format to use (e.g., %H:%M or %l:%M %p)
        '';
      };

      extraConfig = mkOption {
        type = types.lines;
        default = "";
        description = ''
          Extra configuration that should be put in the lightdm-slick-greeter.conf
          configuration file.
        '';
      };
    };
  };

  config = mkIf (ldmcfg.enable && cfg.enable) {
    services.xserver.displayManager.lightdm = {
      greeter = mkDefault {
        package = pkgs.lightdm_slick_greeter.xgreeters;
        name = "lightdm-slick-greeter";
      };

      greeters.gtk.enable = mkDefault false;
    };

    environment.systemPackages = [
      theme
      icons
      font
    ];

    environment.etc."lightdm/slick-greeter.conf".text = ''
      [Greeter]
      activate-numlock=${cfg.activateNumlock}
      background=${ldmcfg.background}
      background-color=${cfg.backgroundColor}
      draw-user-backgrounds=${cfg.drawUserBackgrounds}
      draw-grid=${cfg.drawGrid}
      show-hostname=${cfg.showHostname}
      show-power=${cfg.showPower}
      show-a11y=${cfg.showAccessibility}
      show-keyboard=${cfg.showKeyboard}
      show-clock=${cfg.showClock}
      show-quit=${cfg.showQuit}
      logo=${cfg.logo}
      other-monitors-logo=${cfg.otherMonitorsLogo}
      theme-name=${cfg.theme.name}
      icon-theme-name=${cfg.iconTheme.name}
      font-name=${cfg.font.name}
      xft-antialias=${cfg.xftAntialias}
      xft-dpi=${cfg.xftDPI};
      xft-hintstyle=${cfg.xftHintStyle}
      xft-rgba=${cfg.xftRgba};
      onscreen-keyboard=${cfg.onscreenKeyboard}
      high-contrast=${cfg.highContrast}
      screen-reader=${cfg.screenReader}
      play-ready-sound=${cfg.playReadySound};
      hidden-users=[ ${builtins.concatStringsSep " " cfg.hiddenUsers} ]
      group-filter=[ ${builtins.concatStringsSep " " cfg.groupFilter} ]
      enable-hidpi=${cfg.enableHiDPI}
      only-on-monitor=${cfg.onlyOnMonitor}
      stretch-background-across-monitors=${cfg.stretchBackgroundAcrossMonitors}
      clock-format=${cfg.clockFormat}
    '';
  };
}
