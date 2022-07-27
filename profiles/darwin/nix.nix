{
  self,
  config,
  ...
}: {
  imports = [
    ../common/nix.nix
  ];

  nix = {
    useSandbox = true;
    trustedUsers = ["@admin" "@wheel"];
    allowedUsers = ["*"];
    maxJobs = "auto";
    buildCores = 0;
  };
}
