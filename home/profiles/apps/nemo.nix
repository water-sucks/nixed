{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = with pkgs; [
    nemo
  ];

  xdg.mimeApps.defaultApplications = {
    "inode/directory" = ["nemo.desktop"];
  };
}
