{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.persistence."/persist/home/${config.home.username}" = {
    directories = [
      ".config/OpenRGB"
    ];
  };
}
