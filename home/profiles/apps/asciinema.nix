{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
in
  lib.mkMerge [
    {
      home.packages = [
        pkgs.asciinema
      ];
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".config/asciinema"
        ];
      };
    })
  ]
