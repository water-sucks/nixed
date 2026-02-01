_: {
  imports = [
    ./private/colorscheme.nix
    ./private/darwin-wallpaper.nix
    ./private/homebrew.nix
    ./private/openrgb.nix
    ./private/persistence.nix
    ./private/ssh-git.nix

    ./programs/xob.nix
    ./services/window-managers/leftwm.nix
  ];
}
