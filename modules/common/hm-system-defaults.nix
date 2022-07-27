{
  inputs,
  config,
  pkgs,
  ...
}: let
  inherit (pkgs.stdenv) system;
  homeManagerPackage = inputs.home-manager.packages.${system}.default;
in {
  home-manager.sharedModules = [
    {
      programs.home-manager.enable = true;
      manual.json.enable = true;
      news.display = "show";
      home.stateVersion = "21.11";
    }
  ];
}
