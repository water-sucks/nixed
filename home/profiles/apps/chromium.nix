{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    {
      programs.chromium = {
        enable = true;
        package = with pkgs;
          if isLinux
          then brave
          else runCommand "brave-0.0.0" {} "mkdir $out";
        extensions = [
          "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
          "eimadpbcbfnmbkopoojfekhnkhdbieeh" # Dark Reader
          "bkdgflcldnnnapblkhphbgpggdiikppg" # DuckDuckGo Privacy Essentials
          "nngceckbapebfimnlniiiahkandclblb" # Bitwarden
        ];
      };
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".config/BraveSoftware"
        ];
      };
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "brave-browser"
      ];
    })
  ]
