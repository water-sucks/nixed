{pkgs, ...}: {
  home.packages = with pkgs; [
    thefuck
  ];

  programs.zsh.initExtra = ''
    eval $(thefuck --alias)
  '';
}
