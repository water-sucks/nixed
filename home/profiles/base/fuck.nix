{pkgs, ...}: {
  home.packages = [
    pkgs.thefuck
  ];

  programs.zsh.initContent = ''
    eval $(thefuck --alias)
  '';
}
