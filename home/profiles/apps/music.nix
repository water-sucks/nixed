{
  config,
  pkgs,
  lib,
  ...
}: let
  tidal-hifi = pkgs.tidal-hifi.overrideAttrs (o: {
    buildInputs =
      o.buildInputs
      ++ [
        pkgs.libGL
      ];
  });
in
  lib.mkIf pkgs.stdenv.isLinux {
    home.packages = [
      tidal-hifi
    ];

    xdg.desktopEntries.tidal-hifi = {
      name = "TIDAL Hi-Fi";
      exec = "${tidal-hifi}/bin/tidal-hifi --no-sandbox";
      icon = "tidal-hifi";
      terminal = false;
    };

    home.persistence.${config.persistence.directory} = {
      directories = [
        ".config/tidal-hifi"
      ];
    };

    xdg.mimeApps.defaultApplications = {
      "x-scheme-handler/tidal" = ["tidal-hifi.desktop"];
    };
  }
