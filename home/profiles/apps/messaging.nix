{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    element-desktop
    signal-desktop
    slack
    zoom-us
  ];

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/Element"
      ".config/Signal"
      ".config/Slack"
    ];
    files = [
      ".config/zoom.conf"
      ".config/zoomus.conf"
    ];
  };
}
