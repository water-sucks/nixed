{
  imports = [
    ./configuration.nix
    ./home-manager.nix
  ];

  profiles = {
    nix.enable = true;
    core.enable = true;
    fonts.enable = true;

    defaults.enable = true;
    homebrew.enable = true;
  };

  users = {
    varun.enable = true;
  };
}
