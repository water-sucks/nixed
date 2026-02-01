{
  imports = [
    # Machine-specific
    ./configuration.nix
    ./home-manager.nix

    # General common modules
    ../../../profiles/nix.nix
    ../../../profiles/core.nix
    ../../../profiles/fonts.nix

    # nix-darwin-specific
    ../../profiles/defaults.nix
    ../../profiles/brew.nix
    ../../profiles/optnix.nix
    ../../profiles/vscode.nix
    ../../profiles/ollama.nix
    ../../profiles/tailscale.nix
    ../../profiles/amphetamine.nix

    # Users
    ../../../../users/varun
  ];

  system.primaryUser = "varun";
}
