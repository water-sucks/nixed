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
        tor-browser-bundle-bin
      ];
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "tor-browser"
      ];
    })
  ]
