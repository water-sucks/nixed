{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  xdg.mimeApps.enable = true;
}
