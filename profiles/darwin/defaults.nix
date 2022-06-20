{ self, config, ... }:

{
  services = {
    nix-daemon.enable = true;
    activate-system.enable = true;
  };

  users.nix.configureBuildUsers = true;
}
