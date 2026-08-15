{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = [
        pkgs.gnucash
      ];

      gtk.gtk3.extraCss = ''
        gnc-id-sheet-list {
          background-color: @theme_bg_color;
        }
      '';

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
