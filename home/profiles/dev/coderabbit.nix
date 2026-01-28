{
  inputs,
  pkgs,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) system;

  inherit (inputs.nix-ai-tools.packages.${system}) coderabbit-cli;
in {
  home.packages = [
    coderabbit-cli
  ];
}
