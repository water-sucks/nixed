{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    clickup
  ];

  home.persistence."${config.persistence.directory}" = {
    directories = [
      ".config/ClickUp"
    ];
  };
}
