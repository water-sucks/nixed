{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkIf isLinux {
    home.packages = with pkgs; [
      imv
    ];

    xdg.mimeApps.defaultApplications = {
      "image/gif" = ["imv.desktop"];
      "image/png" = ["imv.desktop"];
      "image/apng" = ["imv.desktop"];
      "image/avif" = ["imv.desktop"];
      "image/jpeg" = ["imv.desktop"];
      "image/webp" = ["imv.desktop"];
      "image/svg+xml" = ["imv.desktop"];
    };
  }
