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
        # There is a strange build failure with Dart.
        # pkgs.bitwarden-desktop
        pkgs.bitwarden-cli
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
