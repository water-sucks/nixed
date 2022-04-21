{ self, config, pkgs, ... }:

{
  services.dunst = {
    enable = true;
    iconTheme = {
      name = "Orchis-dark";
      package = pkgs.orchis-theme;
    };
    settings = {
      global = {
        monitor = 0;
        follow = "none";

        # Geometry
        width = 300;
        height = 300;
        origin = "top-right";
        offset = "35x55";
        scale = 0;

        notification_limit = 5;
        progress_bar = true;
        progress_bar_height = 7;
        progress_bar_frame_width = 1;
        progress_bar_min_width = 150;
        progress_bar_max_width = 300;

        indicate_hidden = "yes";
        transparency = 13;
        separator_height = 13;

        padding = 10;
        horizontal_padding = 8;
        text_icon_padding = 5;
        frame_width = 1;
        frame_color = "#5d5d5d";
        separator_color = "frame";
        sort = "yes";
        idle_threshold = 120;
        font = "IBM Plex Snas JP 8";
        markup = "full";
        format = "<b>%s</b>\\n%b";
        sticky_history = "no";
        browser = "${pkgs.xdg-utils}/bin/xdg-open";
      };
      urgency_low = {
        background = "#121212";
        foreground = "#cccccc";
        timeout = 7;
      };
      urgency_normal = {
        background = "#661344";
        foreground = "#dfdfdf";
        timeout = 10;
      };
      urgency_critical = {
        background = "#660011";
        foreground = "#ffffff";
        timeout = 0;
      };
    };
  };
}
