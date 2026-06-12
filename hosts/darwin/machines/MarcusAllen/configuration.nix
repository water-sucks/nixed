{
  users.users.varun.home = "/Users/varun";
  users.users.varun.uid = 501;
  users.users.varun.isHidden = false;

  security.pam.services.sudo_local.touchIdAuth = true;

  nix.settings = {
    extra-substituters = ["https://artifact-s3-gateway.int.n7k.io/n7k-nix-cache"];
    extra-trusted-public-keys = [
      "nix-cache.infra.n7k.io-0:WyML6bRQeGqxs/1iSoQrlMuooDlxG15rgjuo7Elmpf4="
    ];
  };

  networking.hostName = "MarcusAllen";

  system.stateVersion = 6;
}
