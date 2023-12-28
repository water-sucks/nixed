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
    home.persistence.${config.persistence.directory} = {
      directories = [
        ".local/share/zoxide"
      ];
    };
  })
]
