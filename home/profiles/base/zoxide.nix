{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkMerge [
    {
      programs.zoxide = {
        enable = true;
      };
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".local/share/zoxide"
        ];
      };
    })
  ]
