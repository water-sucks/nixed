{
  config,
  pkgs,
  ...
}: let
  leftwm-state = "${pkgs.leftwm}/bin/leftwm-state";
  leftwm-command = "${pkgs.leftwm}/bin/leftwm-command";

  theme = "GTK_THEME=${config.home.sessionVariables.GTK_THEME}";
  kitty = "${pkgs.kitty}/bin/kitty";
  pavucontrol = "${theme} ${pkgs.pavucontrol}/bin/pavucontrol";
  bluetoothctl = "${pkgs.bluez}/bin/bluetoothctl";
  # blueberry = "${theme} ${pkgs.blueberry}/bin/blueberry";
  nmcli = "${pkgs.networkmanager}/bin/nmcli";
  # nmgui = "GTK_THEME=Orchis\\:dark ${pkgs.networkmanagerapplet}/bin/nm-connection-editor";
  nmtui = "${pkgs.networkmanager}/bin/nmtui";
  rofi = "${pkgs.rofi}/bin/rofi";
  grep = "${pkgs.gnugrep}/bin/grep";
  wc = "${pkgs.coreutils}/bin/wc";
  sed = "${pkgs.gnused}/bin/sed";

  bluetooth-status = pkgs.writeShellScript "polybar-bluetooth-status.sh" ''
    if [ "$(${bluetoothctl} show | ${grep} "Powered: yes" | ${wc} -c)" -eq 0 ]; then
      echo ""
    else
      if [ "$(echo info | ${bluetoothctl} | ${grep} 'Device' | ${wc} -c)" -eq 0 ]; then
        echo "%{F#666666}%{F-}"
      else
        echo ""
      fi
    fi
  '';
  toggle-bluetooth = pkgs.writeShellScript "polybar-toggle-bluetooth.sh" ''
    if [ "$(${bluetoothctl} show | ${grep} "Powered: yes" | ${wc} -c)" -eq 0 ]; then
      ${bluetoothctl} power on
    else
      ${bluetoothctl} power off
    fi
  '';

  toggle-wifi = pkgs.writeShellScript "polybar-wifi-toggle.sh" ''
    ${nmcli} radio wifi "$(${nmcli} r wifi | ${grep} enabled -c | ${sed} -e "s/1/off/" | ${sed} -e "s/0/on/")"
  '';

  power-menu = import ./power-menu.nix pkgs;
in {
  services.polybar.config = {
    "module/launcher" = {
      type = "custom/text";
      content = "";
      content-padding = 2;
      content-foreground = "\${colors.text}";
      content-background = "\${colors.primary}";
      click-left = ''${rofi} -show combi -combi-modi "drun,window,run,ssh" -modi combi'';
    };

    "module/ewmh" = {
      type = "internal/xworkspaces";
      pin-workspaces = true;
      enable-click = true;
      enable-scroll = true;
      format = "<label-state>";
      label-monitor = "%name%";

      label-active = "%{+o} %name% %{-o}";
      label-occupied = " %name% ";
      label-urgent = " %name% ";
      label-empty = " %name% ";

      label-active-foreground = "\${colors.text}";
      label-occupied-foreground = "\${colors.text}";
      label-urgent-foreground = "\${colors.text}";
      label-empty-foreground = "\${colors.deactivated}";
    };

    "module/layout" = {
      type = "custom/script";
      exec = ''${leftwm-state} -w 0 -s "{{ workspace.layout }}"'';
      format = "%{B#6D0000}%{F#F8F8F2} · <label> · %{F-}%{B-}";
      tail = true;
      click-left = "${leftwm-command} NextLayout";
      click-right = "${leftwm-command} PreviousLayout";
    };

    "module/input" = {
      type = "custom/script";
      interval = 0;
      exec = "${pkgs.dbus}/bin/dbus-send --session --print-reply --dest=org.fcitx.Fcitx5 /controller org.fcitx.Fcitx.Controller1.CurrentInputMethod | ${grep} -Po '(?<=\")[^\"]+' | ${sed} 's/keyboard-//g' | ${sed} 's/mozc/jp/g'"; # Stupid oneliner to get input method between English or Japanese
    };

    "module/battery" = {
      type = "internal/battery";
      battery = "BAT0";
      adapter = "ADP1";
      full-at = 100;
      time-format = "%H:%M";

      format-charging = "<animation-charging> <label-charging>";
      label-charging = "%percentage%% ";

      format-discharging = "<ramp-capacity> <label-discharging>";
      label-discharging = " %percentage%% (%time%)";

      format-full-prefix = " ";

      ramp-capacity-0 = "";
      ramp-capacity-1 = "";
      ramp-capacity-2 = "";
      ramp-capacity-3 = "";
      ramp-capacity-4 = "";

      animation-charging-0 = "";
      animation-charging-1 = "";
      animation-charging-2 = "";
      animation-charging-3 = "";
      animation-charging-4 = "";
      animation-charging-framerate = 750;
    };

    "module/storage" = {
      type = "internal/fs";
      interval = 25;
      mount-0 = "/";
      label-mounted = "  %used%";
      label-unmounted = "%mountpoint% not mounted";
      label-unmounted-foreground = "\${colors.disabled}";
    };

    "module/cpu" = {
      type = "internal/cpu";
      interval = 2;
      label = " %percentage:2%%";
    };

    "module/mem" = {
      type = "internal/memory";
      interval = 2;
      label = " %percentage_used%%";
    };

    "module/brightness" = {
      type = "internal/backlight";
      card = "amdgpu_bl0";
      enable-scroll = true;

      format = "<ramp>";
      ramp-0 = "";
      ramp-1 = "ﯧ";
      ramp-2 = "";
      ramp-3 = "ﯦ";
    };

    "module/audio" = {
      type = "internal/pulseaudio";
      format-volume = "<ramp-volume>";
      label-volume = "%percentage%%";
      ramp-volume-0 = "奄";
      ramp-volume-1 = "奔";
      ramp-volume-2 = "墳";
      label-muted = "婢";
      label-muted-foreground = "\${colors.deactivated}";
      click-right = "${pavucontrol}";
    };

    "module/bluetooth" = {
      type = "custom/script";
      exec = "${bluetooth-status}";
      interval = 2;
      click-left = "${toggle-bluetooth}";
      click-right = "${kitty} -e ${bluetoothctl}";
    };

    "module/wlan" = {
      type = "internal/network";
      interface = "wlan0";
      interval = 3;

      format-connected = "<label-connected>";
      format-disconnected = "<label-disconnected>";
      format-connected-padding = 0;

      label-connected = "%{A1:${toggle-wifi}:}%{A3:${kitty} -e ${nmtui}:}直%{A}%{A}";
      label-disconnected = "%{A1:${toggle-wifi}:}%{A3:${kitty} -e ${nmtui}:}睊%{A}%{A}";

      label-disconnected-foreground = "\${colors.deactivated}";
    };

    "module/date" = {
      type = "internal/date";
      interval = 1;
      time = "%a %H:%M:%S";
      time-alt = "%B %d, %Y";
      format = "<label>";
      label = "%time%";
    };

    "module/powermenu" = {
      type = "custom/text";
      content = "襤";
      content-padding = "2";
      content-foreground = "\${colors.text}";
      content-background = "\${colors.primary}";
      click-left = "${power-menu}";
    };

    "module/spacer" = {
      type = "custom/text";
      content = " ";
    };

    "module/dot" = {
      type = "custom/text";
      content-foreground = "\${colors.grey}";
      content = " · ";
    };
  };
}
