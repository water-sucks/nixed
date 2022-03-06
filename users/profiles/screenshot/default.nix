{ self, config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # Wayland
    slurp
    grim
    # X11
    slop
    maim
  ];
}
