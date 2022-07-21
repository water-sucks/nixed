{ self, config, pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
lib.mkMerge [
  {
    nix = {
      gc.automatic = true;
      extraOptions = ''
        min-free = 536870912
        keep-outputs = true
        keep-derivations = true
        fallback = true
      '';
    };
  }
  (lib.mkIf isDarwin {
    nix = {
      useSandbox = true;
      trustedUsers = [ "@admin" "@wheel" ];
      allowedUsers = [ "*" ];
      maxJobs = "auto";
      buildCores = 0;
    };
  })
  (lib.mkIf isLinux {
    nix.settings = {
      sandbox = true;
      trusted-users = [ "root" "@wheel" ];
      allowed-users = [ "*" ];
      max-jobs = "auto";
      cores = 0;
      auto-optimise-store = true;
    };
  })
]
