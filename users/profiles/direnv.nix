{
  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };

  home.sessionVariables = {
    DIRENV_HIDE_DIFF = 1;
  };
}
