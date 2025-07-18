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
    brew.enable = true;
    optnix.enable = true;
    vscode.enable = true;
    amphetamine.enable = true;
  };

  system.primaryUser = "varun";

  users = {
    varun.enable = true;
  };
}
