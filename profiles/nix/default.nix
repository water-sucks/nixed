{ self, config, pkgs, ... }:

{
  nix = {
    settings = {
      sandbox = true;
      trusted-users = [ "root" "@wheel" ];
      allowed-users = [ "@wheel" ];
      system-features = [ "nixos-test" "benchmark" "big-parallel" "kvm" ];
      max-jobs = "auto"; # Sets to number of cores on machine
      build-cores = 0; # Sets to number of cores on machine
      auto-optimise-store = true;
    };
    gc.automatic = true;
    extraOptions = ''
      min-free = 536870912
      keep-outputs = true
      keep-derivations = true
      fallback = true
    '';
  };

  nixpkgs.config = {
    allowUnfree = true; # Sadness, I wish I did not need this option
    chromium = {
      enableWideVine = true;
    };
  };

}
