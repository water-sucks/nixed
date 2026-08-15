{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
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
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".local/share/direnv"
        ];
      };
    })
  ]
