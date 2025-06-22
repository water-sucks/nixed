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
        pkgs.gnucash
      ];

      persistence = {
        directories = [
          ".config/gnucash"
          ".local/share/gnucash"
        ];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "gnucash"
      ];
    })
  ]
