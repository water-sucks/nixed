{
  pkgs,
  config,
  ...
}: let
  dmcfg = config.services.displayManager;

  light = "${pkgs.light}/bin/light";
in {
  services.xserver.displayManager.startx.enable = true;

  services.displayManager.ly = {
    enable = true;
    settings = {
      waylandsessions = "${dmcfg.sessionData.desktops}/share/wayland-sessions";
      xsessions = "${dmcfg.sessionData.desktops}/share/xsessions";
      animation = "matrix";
      clock = "%a %d %b %Y - %H:%M:%S";
      load = true;
      save = true;
      xinitrc = "null";
      session_log = "/dev/null";
      brightness_up_cmd = "${light} -A 5";
      brightness_down_cmd = "${light} -U 5";
      text_in_center = true;
      initial_info_text = "Greetings, cruel world!";
      tty = 1;
    };
  };

  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  environment.systemPackages = [
    pkgs.ly
  ];

  environment.persistence."/persist" = {
    files = [
      "/etc/ly/save.ini"
    ];
  };
}
