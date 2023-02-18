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
      nix-direnv = {
        enable = true;
      };
    };

    home.sessionVariables = {
      DIRENV_HIDE_DIFF = 1;
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    home.persistence."/persist/home/${config.home.username}" = {
      directories = [
        ".local/share/direnv"
      ];
    };
  })
]
