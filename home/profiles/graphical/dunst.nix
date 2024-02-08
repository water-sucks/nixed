{
  config,
  pkgs,
  lib,
  ...
}: let
  c = config.colorscheme.palette;
in {
  assertions = with lib; [
    (hm.assertions.assertPlatform "dunst" pkgs platforms.linux)
  ];

  services.dunst = {
    enable = true;
    inherit (config.gtk) iconTheme;
    waylandDisplay = "wayland-1";
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
        frame_color = "#${c.gray}";
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
        background = "#${c.bg}";
        foreground = "#${c.fg}";
        timeout = 7;
      };
      urgency_normal = {
        background = "#${c.bg-bright}";
        foreground = "#${c.fg}";
        timeout = 10;
      };
      urgency_critical = {
        background = "#${c.dark-red}";
        foreground = "#${c.fg}";
        timeout = 0;
      };
    };
  };

  # The graphical-session.target dependency
  # is not correctly configured for dunst.
  systemd.user.services.dunst = {
    Install.WantedBy = ["graphical-session.target"];
  };
}
