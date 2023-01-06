{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
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
