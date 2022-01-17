{ config, pkgs, ... }:

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
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "dirhistory" ];
      theme = ""; # Using starship for theme
    };
    initExtra = ''
      export STARSHIP_CONFIG=${
        pkgs.writeText "starship.toml"
	  (pkgs.lib.fileContents ../../../profiles/starship/starship.toml)
       };

      eval "$(${pkgs.starship}/bin/starship init zsh)"
    '';
    shellAliases = {
      flk = "bud"; # I don't like the name "bud" for the devos tool, but I like the name "flk"; petty, right?
      please = "sudo";
      dog = "bat";
    };
  };
}
