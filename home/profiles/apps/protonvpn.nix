{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    protonvpn-gui
    protonvpn-cli
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/protonvpn"
    ];
  };
}
