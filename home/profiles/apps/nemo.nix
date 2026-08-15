{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkIf isLinux {
    home.packages = with pkgs; [
      nemo
    ];

    xdg.mimeApps.defaultApplications = {
      "inode/directory" = ["nemo.desktop"];
    };
  }
