{
  self,
  config,
  ...
}: {
  imports = [
    ../common/nix.nix
  ];

  nix.settings = {
    sandbox = true;
    trusted-users = ["root" "@wheel"];
    allowed-users = ["*"];
    max-jobs = "auto";
    cores = 0;
    auto-optimise-store = true;
  };
}
