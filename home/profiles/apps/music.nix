{
  config,
  pkgs,
  lib,
  ...
}: let
  tidal-hifi = pkgs.tidal-hifi.overrideAttrs (o: rec {
    version = "5.13.1";
    src = pkgs.fetchurl {
      url = "https://github.com/Mastermindzh/tidal-hifi/releases/download/${version}/tidal-hifi_${version}_amd64.deb";
      sha256 = "sha256-TnvVm0qjm41if90+f9YtO8wR6NYg6oUZbZd0RiUU33M=";
    };
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
