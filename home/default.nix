{
  flake = {
    homeModules = [
      ./modules/programs/xob.nix
      ./modules/services/window-managers/leftwm.nix
    ];
  };
}
