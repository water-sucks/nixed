{pkgs, ...}: {
  home.packages = with pkgs; [
    thefuck
  ];
}
