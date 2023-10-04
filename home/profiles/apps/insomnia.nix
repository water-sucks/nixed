{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    insomnia
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/insomnia"
    ];
  };
}
