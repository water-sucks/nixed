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

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/protonvpn"
    ];
  };
}
