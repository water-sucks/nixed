{
  pkgs,
  lib,
  ...
}:
lib.mkIf pkgs.stdenv.isLinux {
  home.packages = [
    pkgs.tidal-hifi
  ];

  xdg.desktopEntries.tidal-hifi = {
    name = "TIDAL Hi-Fi";
    exec = "tidal-hifi --no-sandbox";
    icon = "tidal-hifi";
    terminal = false;
  };

  persistence = {
    directories = [
      ".config/tidal-hifi"
    ];
  };

  xdg.mimeApps.defaultApplications = {
    "x-scheme-handler/tidal" = ["tidal-hifi.desktop"];
  };
}
