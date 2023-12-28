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

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/insomnia"
    ];
  };
}
