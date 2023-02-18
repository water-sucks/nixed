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
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/Element"
      ".config/Signal"
      ".config/Slack"
    ];
  };
}
