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

  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/Bitwarden"
    ];
  };
}
