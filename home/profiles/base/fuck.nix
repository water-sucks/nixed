{pkgs, ...}: {
  home.packages = [
    pkgs.stable.thefuck
  ];

  programs.zsh.initExtra = ''
    eval $(thefuck --alias)
  '';
}
