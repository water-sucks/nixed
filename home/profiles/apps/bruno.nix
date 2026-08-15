{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux isDarwin;
in
  lib.mkMerge [
    (lib.mkIf isLinux {
      home.packages = with pkgs; [
        bruno
      ];
    })
    (lib.mkIf isDarwin {
      homebrew.casks = [
        "bruno"
      ];
    })
  ]
