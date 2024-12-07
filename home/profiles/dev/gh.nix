{
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
    persistence = {
      files = [
        ".config/gh/hosts.yml"
      ];
    };
  })
]
