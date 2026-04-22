{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      programs.obs-studio = {
        enable = true;
        package = pkgs.obs-studio.override {
          cudaSupport = true;
        };
        plugins = with pkgs.obs-studio-plugins; [
          obs-pipewire-audio-capture
          wlrobs
        ];
      };

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
