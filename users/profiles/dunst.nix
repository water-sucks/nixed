{
  self,
  config,
  pkgs,
  ...
}: {
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
        separator_height = 2;

        class = "Dunst";
        padding = 8;
        horizontal_padding = 8;
        text_icon_padding = 0;
        frame_width = 2;
        frame_color = "#5d5d5d";
        separator_color = "frame";
        sort = "yes";
        idle_threshold = 120;
        font = "IBM Plex Sans 8";
        markup = "full";
        format = "<b>%s</b>\\n%b";
        sticky_history = "no";
        browser = "${pkgs.xdg-utils}/bin/xdg-open";
        ellipsize = "middle";
        stack_duplicates = true;
        hide_duplicate_count = true;
        show_indicators = "yes";
        icon_position = "left";
        min_icon_size = 0;
        max_icon_size = 33;
        history_length = 20;
      };

      urgency_low = {
        background = "#121212";
        foreground = "#cccccc";
        timeout = 7;
      };
      urgency_normal = {
        background = "#121212";
        foreground = "#cccccc";
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
