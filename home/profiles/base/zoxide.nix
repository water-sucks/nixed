{
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
    persistence = {
      directories = [
        ".local/share/zoxide"
      ];
    };
  })
]
