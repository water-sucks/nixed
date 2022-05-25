{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    xdotool
  ];

  services.polybar = {
    enable = true;
    script = ''
      polybar oofbar &
    '';
    config = {
      "colors" = {
        background = "#EF121212";
        background-alt = "#EF232323";
        foreground = "#C5C8C6";
        primary = "#A01394";
        secondary = "#8ABEB7";
        alert = "#A54242";
        disabled = "#707880";
      };
      "bar/oofbar" = {
        width = "100%";
        height = "2.25%";
        radius = 6;
        background = "\${colors.background}";
        foreground = "\${colors.foreground}";
        line-size = 2;
        border-top-size = 0;
        border-size = 3;
        border-color = "#00000000";
        offset-x = 0;
        offset-y = 0;
        padding-left = 5;
        padding-right = 5;
        module-margin = 2;
        separator = "";
        separator-foreground = "\${colors.disabled}";
        font-0 = "IBM Plex Sans:pixelsize=8;0";
        font-1 = "BlexMono Nerd Font:pixelsize=9;0";
        modules-left = "power-menu sheets view";
        modules-center = "";
        modules-right = "input-method storage ram cpu brightness battery wireless date search";
        cursor-click = "pointer";
        cursor-scroll = "ns-resize";
        enable-ipc = true;
        tray-position = "none";
      };
      "module/power-menu" = {
        type = "custom/text";
        content = "⏻";
        click-left = "${pkgs.rofi}/bin/rofi -show powermenu -modi powermenu:${pkgs.rofi-power-menu}/bin/rofi-power-menu";
      };
      "module/sheets" = {
        type = "internal/xworkspaces";
        label-active = "%name%";
        label-active-background = "\${colors.background-alt}";
        label-active-underline = "\${colors.primary}";
        label-active-padding = 3;
        label-occupied = "%name%";
        label-occupied-padding = 3;
        label-urgent = "%name%";
        label-urgent-background = "\${colors.alert}";
        label-urgent-padding = 3;
        label-empty = "%name%";
        label-empty-foreground = "\${colors.disabled}";
        label-empty-padding = 3;
      };
      # Name of active window
      # "module/view" = {
      #   type = "internal/xwindow";
      #   format = "<label>";
      #   label = "%title%";
      #   label-maxlen = 69;
      # };
      # Name of active window (application only)
      "module/view" = {
        type = "custom/script";
        interval = 0;
        exec = "NAME=$(${pkgs.xdotool}/bin/xdotool getactivewindow getwindowclassname 2> /dev/null); if [ -n \"$NAME\" ] && [ \"$?\" -eq 0 ]; then echo $NAME; else echo \"leftwm\"; fi";
      };
      "module/input-method" = {
        type = "custom/script";
        interval = 0;
        exec = "${pkgs.dbus}/bin/dbus-send --session --print-reply --dest=org.fcitx.Fcitx5 /controller org.fcitx.Fcitx.Controller1.CurrentInputMethod | ${pkgs.gnugrep}/bin/grep -Po '(?<=\")[^\"]+' | ${pkgs.gnused}/bin/sed 's/keyboard-//g' | ${pkgs.gnused}/bin/sed 's/mozc/jp/g'"; # Stupid oneliner to get input method between English or Japanese
      };
      "module/storage" = {
        type = "internal/fs";
        interval = 25;
        mount-0 = "/";
        label-mounted = "   %used%";
        label-unmounted = "%mountpoint% not mounted";
        label-unmounted-foreground = "\${colors.disabled}";
      };
      "module/ram" = {
        type = "internal/memory";
        interval = 2;
        format-prefix = "  ";
        format-prefix-foreground = "\${colors.primary}";
        label = "%percentage_used:2%%";
      };
      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        format-prefix = "  ";
        format-prefix-foreground = "\${colors.primary}";
        label = "%percentage:2%%";
      };
      "module/brightness" = {
        type = "internal/backlight";
        card = "amdgpu_bl0";
        format = "<ramp>";
        use-actual-brightness = true;
        enable-scroll = true;
        ramp-0 = "";
        ramp-1 = "ﯧ";
        ramp-2 = "";
        ramp-3 = "ﯦ";
      };
      "module/battery" = {
        type = "internal/battery";
        battery = "BAT0";
        adapter = "ADP1";
        poll-interval = 5;
        format-charging = "<label-charging> <animation-charging>";
        format-discharging = "<label-discharging> <ramp-capacity>";
        ramp-capacity-0 = "";
        ramp-capacity-1 = "";
        ramp-capacity-2 = "";
        ramp-capacity-3 = "";
        ramp-capacity-4 = "";
        bar-capacity-width = 10;
        animation-charging-0 = "";
        animation-charging-1 = "";
        animation-charging-2 = "";
        animation-charging-3 = "";
        animation-charging-4 = "";
        animation-charging-framerate = 750;
        animation-discharging-0 = "";
        animation-discharging-1 = "";
        animation-discharging-2 = "";
        animation-discharging-3 = "";
        animation-discharging-4 = "";
        animation-discharging-framerate = 500;
      };
      "module/internet" = {
        type = "internal/network";
        interval = 2;
        unknown-as-up = false;
        format-connected = "label-connected";
      };
      "module/wireless" = {
        "inherit" = "module/internet";
        interface = "wlp2s0";
        format-connected = "<label-connected>";
        format-disconnected = "<label-disconnected>";
        label-connected = "   直";
        label-disconnected = "   睊";
      };
      "module/date" = {
        type = "internal/date";
        interval = 1;
        date = "%a %d %b";
        time = "%H:%M:%S";
        format = "<label>";
        label = " %date%  %time%";
      };
      "module/search" = {
        type = "custom/text";
        content = " ";
        click-left = "${pkgs.rofi}/bin/rofi -show combi -combi-modi \"window,run,ssh,calc\" -modi combi";
      };
      "settings" = {
        screenchange-reload = true;
        pseudo-transparency = true;
      };
    };
  };
}
