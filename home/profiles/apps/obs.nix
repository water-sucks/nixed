{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    obs-studio
    chatterino2
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/obs-studio"
      ".local/share/chatterino"
    ];
  };
}
