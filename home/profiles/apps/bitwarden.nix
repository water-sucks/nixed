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
        # pkgs.bitwarden-desktop
        # the desktop is broken again lol https://github.com/NixOS/nixpkgs/pull/525731
        # when will we learn
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
