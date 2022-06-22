{ config, pkgs, ... }:

let
  sources = pkgs.callPackage _sources/generated.nix { };
in
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = false; # Disabled for thefuck command to work instantly
    enableCompletion = true;
    history = {
      expireDuplicatesFirst = true;
      ignoreSpace = true;
      save = 10000;
      share = true;
      size = 10000;
    };
    plugins = [
      {
        name = "nix-shell";
        inherit (sources.nix-shell) src;
      }
      {
        name = "zsh-autosuggestions";
        inherit (sources.zsh-autosuggestions) src;
      }
      {
        name = "fast-syntax-highlighting";
        inherit (sources.fast-syntax-highlighting) src;
      }
    ];
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "dirhistory" "thefuck" ];
      theme = ""; # Using starship for theme
    };
    initExtraFirst = ''
      nerdfetch
    '';
    shellAliases = {
      please = "sudo";
      dog = "bat";
      mkdir = "mkdir -p";
    };
  };
}
