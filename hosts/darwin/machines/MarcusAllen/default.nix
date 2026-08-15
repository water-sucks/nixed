{
  imports = [
    # Machine-specific
    ./configuration.nix
    ./home-manager.nix

    # General common modules
    # Nix is not imported here since
    # this is configured with Determinate Nix
    # directly in configuration.nix.
    ../../../profiles/core.nix
    ../../../profiles/fonts.nix

    # nix-darwin-specific
    ../../profiles/defaults.nix
    ../../profiles/brew.nix
    ../../profiles/amphetamine.nix

    # Users
    ../../../../users/varun
  ];

  system.primaryUser = "varun";
}
