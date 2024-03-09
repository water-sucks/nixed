{
  config,
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
    home.persistence.${config.persistence.directory} = {
      directories = [
        ".local/share/direnv"
      ];
    };
  })
]
