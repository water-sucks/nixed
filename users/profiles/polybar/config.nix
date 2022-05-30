{ self, config, pkgs, ... }:

{
  services.polybar.config = {
    "global/wm" = {
      margin-top = 10;
      margin-bottom = 10;
    };

    "settings" = {
      screenchange-reload = true;
      throttle-output = 5;
      throttle-output-for = 10;
      compositing-background = "source";
      compositing-foreground = "over";
      compositing-overline = "over";
      compositing-underline = "over";
      compositing-border = "over";
      pseudo-transparency = false;
    };

    "bar/oofbar" = {
      modules-left = "powermenu spacer ewmh spacer layout";
      modules-right = "input dot battery dot storage dot cpu dot mem dot brightness dot audio dot bluetooth dot wlan dot date spacer launcher";
      width = "100%";
      offset-x = 0;
      offset-y = 0;
      height = 25;
      fixed-center = true;
      bottom = false;
      background = "\${colors.background}";
      foreground = "\${colors.text}";
      radius = 0;
      padding-left = 0;
      padding-right = 0;
      module-margin-left = 0;
      module-margin-right = 0;
      separator = "";
      font-0 = "BlexMono Nerd Font:size=8;3";
      border-bottom = 2;
      border-color = "\${colors.primary}";
      cursor-click = "pointer";
      cursor-scroll = "ns-resize";
      line-size = 2;
      line-color = "\${colors.primary}";
      tray-position = "none";
    };
  };
}
