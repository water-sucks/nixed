{
  inputs,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) system;
  inherit (pkgs.stdenv) isLinux;

  inherit (inputs.nix-ai-tools.packages.${system}) coderabbit-cli;
in
  lib.mkMerge [
    {
      home.packages = [
        coderabbit-cli
      ];
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".coderabbit"
        ];
      };
    })
  ]
