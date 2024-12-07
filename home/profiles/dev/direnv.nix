{
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    programs.direnv = {
      enable = true;
      config = {
        hide_env_diff = true;
      };
      nix-direnv = {
        enable = true;
      };
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    persistence = {
      directories = [
        ".local/share/direnv"
      ];
    };
  })
]
