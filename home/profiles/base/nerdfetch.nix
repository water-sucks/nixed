{pkgs, ...}: {
  home.packages = with pkgs; [
    nerdfetch
  ];
}
