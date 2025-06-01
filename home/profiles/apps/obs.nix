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
        obs-studio
        chatterino2
      ];

      persistence = {
        directories = [
          ".config/obs-studio"
          ".local/share/chatterino"
        ];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = ["obs"];
    })
  ]
