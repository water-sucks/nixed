{
  users.users.varun.home = "/Users/varun";
  users.users.varun.uid = 501;
  users.users.varun.isHidden = false;

  security.pam.services.sudo_local.touchIdAuth = true;

  nix.enable = false;

  determinateNix = {
    enable = true;
    customSettings = {
      allowed-users = ["*"];
      max-jobs = "auto";
      cores = 0;
      auto-optimise-store = false;
      extra-substituters = [
        "https://artifact-s3-gateway.int.n7k.io/n7k-nix-cache"
        "https://nix-community.cachix.org"
      ];
      extra-trusted-public-keys = [
        "nix-cache.infra.n7k.io-0:WyML6bRQeGqxs/1iSoQrlMuooDlxG15rgjuo7Elmpf4="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
    };
    nixosVmBasedLinuxBuilder = {
      enable = true;
    };
  };

  networking.hostName = "MarcusAllen";

  system.stateVersion = 6;
}
