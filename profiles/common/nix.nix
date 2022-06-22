{ self, config, pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isDarwin;

  darwinOptions = lib.optionalAttrs isDarwin {
    services.nix-daemon.enable = true;
  };
in
{
  nix = {
    useSandbox = true;
    trustedUsers = if isDarwin then [ "@admin" "@wheel" ] else [ "root" "@wheel" ];
    allowedUsers = [ "*" ];
    maxJobs = "auto";
    buildCores = 0;
    gc.automatic = true;
    extraOptions = ''
      min-free = 536870912
      keep-outputs = true
      keep-derivations = true
      fallback = true
    '';
  };
}
