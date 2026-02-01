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
        pkgs.bitwarden-desktop
      ];

      persistence = {
        directories = [
          ".config/Bitwarden"
        ];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "bitwarden"
      ];
    })
  ]
