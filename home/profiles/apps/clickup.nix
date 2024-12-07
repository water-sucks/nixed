{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    clickup
  ];

  persistence = {
    directories = [
      ".config/ClickUp"
    ];
  };
}
