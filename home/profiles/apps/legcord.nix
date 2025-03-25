{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = [
    pkgs.legcord
  ];

  persistence = {
    directories = [
      ".config/legcord"
    ];
  };
}
