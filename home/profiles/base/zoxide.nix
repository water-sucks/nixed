{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    programs.zoxide = {
      enable = true;
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    home.persistence."/persist/home/${config.home.username}" = {
      directories = [
        ".local/share/zoxide"
      ];
    };
  })
]
