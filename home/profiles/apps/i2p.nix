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
        i2p
      ];
    })

    (lib.mkIf isDarwin {
      homebrew.brews = [
        "i2p"
      ];
    })
  ]
