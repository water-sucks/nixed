{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.persistence.${config.persistence.directory} = {
    directories = [
      ".config/configstore"
    ];
  };
}
