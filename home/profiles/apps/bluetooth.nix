{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkIf isLinux {
    home.packages = [
      pkgs.overskride
    ];
  }
