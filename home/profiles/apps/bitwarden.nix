{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = with pkgs; [
        bitwarden
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
