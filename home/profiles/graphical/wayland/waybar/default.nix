{
  config,
  pkgs,
  lib,
  ...
}: let
  waybar = pkgs.waybar.override {
    swaySupport = false;
    mpdSupport = false;
    sndioSupport = false;
  };

  waybar-mpris-pkg = pkgs.waybar-mpris.overrideAttrs (_: {
    patches = [
      ../../../../../overrides/patches/waybar-mpris-icons.patch
    ];
  });

  sed = "${pkgs.gnused}/bin/sed";
  rofi = "${pkgs.rofi}/bin/rofi";
  grep = "${pkgs.gnugrep}/bin/grep";
  kitty = "${pkgs.kitty}/bin/kitty";
  termLaunch = "${kitty} -e";
  theme = "GTK_THEME=${config.home.sessionVariables.GTK_THEME}";
  nmtui = "${pkgs.networkmanager}/bin/nmtui";
  nmcli = "${pkgs.networkmanager}/bin/nmcli";
  amixer = "${pkgs.alsa-utils}/bin/amixer";
  waybarMpris = "${waybar-mpris-pkg}/bin/waybar-mpris";
  bluetoothctl = "${pkgs.bluez}/bin/bluetoothctl";
  pavucontrol = "${theme} ${pkgs.pavucontrol}/bin/pavucontrol";
  getAppname = "${pkgs.get-appname}/bin/get-appname";
  activeWindowAppName = with pkgs;
    writeShellScript "river-active-window" ''
      while true; do
        app_id=$(${lswt}/bin/lswt -j | ${jq}/bin/jq -r ".[] | (if .activated then . else empty end) | .app_id")
        if name=$(${getAppname} $app_id); then
          if [ "$name" == "mpv Media Player" ]; then
            echo "mpv"
          else
            echo $name
          fi
        else
          echo "River"
        fi
        sleep 0.01
      done
    '';

  c = config.colorscheme.colors;
in {
  programs.waybar = {
    enable = true;
    package = waybar;
    systemd.enable = true;
    settings = {
      topbar = {
        name = "topbar";
        position = "top";
        height = 36;
        spacing = 8;
        modules-left = ["custom/active-window" "custom/waybar-mpris"];
        modules-center = ["clock"];
        modules-right = [
          "battery"
          "backlight"
          "disk"
          "cpu"
          "memory"
          "pulseaudio"
          "bluetooth"
          "network"
          "custom/dunst"
        ];
        backlight = {
          device = lib.mkDefault "amdgpu_bl0";
          format = "{icon} {percent}%";
          format-icons = ["󰽤" "󱎖" "󰽢"];
        };
        battery = {
          interval = 5;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-icons = ["" "" "" "" ""];
          max-length = 25;
        };
        bluetooth = {
          format = " {status}";
          format-disabled = "󰂲";
          format-off = "󰂲";
          format-on = ":";
          format-connected = " {device_alias}";
          on-click = "${termLaunch} ${bluetoothctl}";
          tooltip-format = "{controller_alias}\t{controller_address}";
          tooltip-format-connected = "{controller_alias}\t{controller_address}\n\n{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias}\t{device_address}";
        };
        clock = {
          interval = 1;
          format = " {:%a %d %b  󰔛 %H:%M:%S}";
          format-calendar = "{}";
        };
        cpu = {
          interval = 10;
          format = " {}%";
          max-length = 10;
        };
        disk = {
          interval = 30;
          path = lib.mkDefault "/nix";
          format = "󰋊 {used}";
        };
        memory = {
          interval = 30;
          format = "󰍛 {}%";
          max-length = 10;
        };
        network = {
          interface = lib.mkDefault "wlan0";
          format = "{ifname}";
          format-wifi = "󰖩 {essid}";
          format-ethernet = "󰈀 {ipaddr}";
          format-disconnected = "󰖪";
          on-click = "${termLaunch} ${nmtui}";
          on-click-right = ''${nmcli} radio wifi "$(${nmcli} r wifi | ${grep} enabled -c | ${sed} -e "s/1/off/" | ${sed} -e "s/0/on/")"'';
          tooltip-format-wifi = " {essid} ({signalStrength}%)";
          tooltip-format-ethernet = "󰈀 {ifname}";
          tooltip-format-disconnected = "Disconnected";
          max-length = 50;
        };
        pulseaudio = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}%";
          format-muted = "";
          format-icons = {
            headphone = "󰋋";
            hands-free = "󰋋";
            headset = "󰋎";
            phone = "";
            portable = "";
            car = "";
            default = ["" ""];
          };
          scroll-step = 1;
          on-click = "${pavucontrol}";
          on-click-right = "${amixer} sset Master toggle";
        };
        "custom/active-window" = {
          exec = "${activeWindowAppName}";
          format = "{}";
        };
        "custom/waybar-mpris" = {
          return-type = "json";
          max-length = 150;
          exec = ''${waybarMpris} --order "SYMBOL:ARTIST:TITLE:POSITION" --position'';
          on-click = "${waybarMpris} --send toggle";
          escape = true;
        };
        "custom/dunst" = {
          format = "Δ";
          on-click = "${pkgs.dunst}/bin/dunstctl history-pop";
          on-click-right = "systemctl --user restart dunst";
        };
      };
      sidebar = {
        name = "sidebar";
        position = "left";
        width = 36;
        spacing = 8;
        modules-left = ["custom/explorer" "river/tags"];
        modules-center = ["wlr/taskbar"]; # Segfaults when ran as a systemd user service; will check later
        modules-right = ["tray" "custom/powermenu"];
        "custom/explorer" = {
          format = "λ";
          on-click = "${rofi} -show combi -combi-modi 'drun,window,run,ssh' -modi combi";
        };
        "river/tags" = {
          "num-tags" = 9;
          "tag-labels" = ["一" "二" "三" "四" "五" "六" "七" "八" "九"];
        };
        "wlr/taskbar" = {
          format = "{icon}";
          icon-size = 11;
          tooltip = false;
          on-click = "none";
          on-click-right = "none";
        };
        tray = {
          show-passive-items = true;
          icon-size = 11;
          spacing = 11;
        };
        "custom/powermenu" = {
          format = "󰐥";
          on-click = "rofi-power-menu";
        };
      };
    };
    style = ''
      /* I have to define bg statically due to GTK CSS limitations */
      @define-color bg rgba(11, 11, 11, 0.69);
      @define-color bg-button #${c.dark-purple};
      @define-color text #${c.gray};
      @define-color focused #${c.fg};
      @define-color disabled #${c.fg-dark};
      @define-color primary #${c.magenta};
      @define-color secondary #${c.dark-red};
      @define-color error #${c.light-red};

      ${builtins.readFile ./style.css}
    '';
  };

  systemd.user.services.waybar = {
    Unit = {
      ConditionPathExistsGlob = ["%t/wayland-*"];
    };
  };
}
