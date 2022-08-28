{pkgs, ...}: let
  rofi = "${pkgs.rofi}/bin/rofi";
  powerMenu = import ./power-menu.nix pkgs;
in {
  programs.waybar = {
    enable = true;
    package = pkgs.waybar.override {
      swaySupport = false;
      mpdSupport = false;
      sndioSupport = false;
    };
    settings = {
      main = {
        layer = "top";
        position = "left";
        width = 40;
        spacing = 5;
        modules-left = ["custom/explorer" "river/tags"];
        # modules-center = ["wlr/taskbar"];
        modules-right = ["tray" "custom/powermenu"];
        "custom/explorer" = {
          format = "";
          on-click = "${rofi} -show combi -combi-modi 'drun,window,run,ssh' -modi combi";
        };
        "river/tags" = {
          "num-tags" = 9;
          "tag-labels" = ["一" "二" "三" "四" "五" "六" "七" "八" "九"];
        };
        "tray" = {
          tooltip = true;
          icon-size = 11;
          spacing = 7;
        };
        "wlr/taskbar" = {
          format = "{icon}";
          icon-size = 11;
          tooltip = false;
          on-click = "none";
          on-click-right = "none";
        };
        "custom/powermenu" = {
          format = " ";
          on-click = "${powerMenu}";
        };
      };
    };
    style = ''
      * {
        color: #b4b4b4;
        border-radius: 0;
        font-family: "monospace", "IBM Plex Sans JP";
        font-size: 11px;
        min-height: 0px;
        min-width: 0px;
        padding: 1px 0;
        margin: 1px 0;
      }

      #window {
        padding: 1px 0;
      }

      window#waybar {
        padding: 0 0;
        background-color: rgba(11, 11, 11, 0.88);
        color: #ffffff;
        border-right: 10px;
      }

      #tags button {
        padding: 2 0px;
        background-color: transparent;
        border-left: 2px solid rgba(100, 114, 125, 0.5);
        border-left: 2px solid #732735;
        color: #999999;
      }

      #tags button.focused {
        color: #ffffff;
        background-color: transparent;
        border-left: 2px solid #ff5fff;
      }

      #tags button.persistent {
        border-left: 2px solid #121212;
      }

      #tags button.urgent {
        border-left: 2px solid #ff76a1;
      }

      #tray,
      #taskbar {
        color: #b4b4b9;
      }

      #tray {
        border-left: transparent;
        border-right: #121212;
      }

      #tray menu {
        background-color: #121212;
        padding: 3px;
      }

      #taskbar {
        padding: 0px;
        border-left: 2px solid #732735;
      }

      #taskbar button {
        padding: 5px 0;
      }

      label:focus {
        background-color: #000000;
      }

      #taskbar button.hover {
        background: rgba(0, 0, 0, 0.2);
      }

      #taskbar button.active {
        background-color: #333333;
      }

      #custom-explorer,
      #custom-powermenu {
        padding: 10px 0;
      }
    '';
  };

  systemd.user.services.waybar = {
    Unit = {
      Description = "Highly customizable Wayland bar for Sway and Wlroots based compositors.";
      PartOf = ["graphical-session.target"];
      After = ["graphical-session-pre.target"];
    };

    Install.WantedBy = ["graphical-session.target"];

    Service = {
      ExecStart = "${pkgs.waybar}/bin/waybar";
      Restart = "on-failure";
      RestartSec = 2;
      StandardOutput = "append:/tmp/waybar-stdout.log";
      StandardError = "append:/tmp/waybar-stderr.log";
    };
  };
}
