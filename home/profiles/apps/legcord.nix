{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = [
        pkgs.legcord
      ];

      persistence = {
        directories = [
          ".config/legcord"
        ];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "legcord"
      ];
    })
  ]
