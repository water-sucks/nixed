{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    bitwarden
  ];

  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/Bitwarden"
    ];
  };
}
