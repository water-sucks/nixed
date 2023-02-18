{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    programs.gh = {
      enable = true;

      settings = {
        git_protocol = "ssh";
      };
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    home.persistence."/persist/home/${config.home.username}" = {
      files = [
        ".config/gh/hosts.yml"
      ];
    };
  })
]
