{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  programs.mpv = {
    enable = true;
    bindings = {
      WHEEL_UP = "seek 10";
      WHEEL_DOWN = "seek -10";
      "Alt+0" = "set window-scale 0.5";
    };
  };

  xdg.mimeApps.defaultApplications = {
    "video/*" = ["mpv.desktop"];
  };
}
