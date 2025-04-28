{pkgs, ...}: {
  home.packages = [
    pkgs.stable.thefuck
  ];

  programs.zsh.initContent = ''
    eval $(thefuck --alias)
  '';
}
