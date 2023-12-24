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
        version = 1;
        git_protocol = "ssh";
        aliases = {
          co = "pr checkout";
        };
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
