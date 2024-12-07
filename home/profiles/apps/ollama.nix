{
  pkgs,
  lib,
  ...
}: let
  inherit (lib) mkMerge mkIf;
  inherit (pkgs.stdenv) isLinux;
in
  mkMerge [
    {
      home.packages = with pkgs; [
        ollama
      ];
    }

    (mkIf isLinux {
      persistence = {
        directories = [
          ".ollama"
        ];
      };
    })
  ]
