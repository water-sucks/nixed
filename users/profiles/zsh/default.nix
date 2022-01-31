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
      theme = "ys"; # Using starship for theme
    };
    initExtraFirst = ''
      freshfetch
    '';
    initExtra = ''
        export STARSHIP_CONFIG=${
          pkgs.writeText "starship.toml"
      (pkgs.lib.fileContents ../../../profiles/starship/starship.toml)
        };

        # eval "$(${pkgs.starship}/bin/starship init zsh)"
    '';
    shellAliases = {
      flk = "bud"; # I don't like the name "bud" for the devos tool, but I like the name "flk"; petty, right?
      please = "sudo";
      dog = "bat";
      fuckit = "bud rebuild $(hostname) switch";
    };
  };
}
