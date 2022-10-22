{
  inputs,
  pkgs,
  ...
}: let
  inherit (pkgs.stdenv) isDarwin;
in {
  nix = {
    gc.automatic = true;
    settings = {
      sandbox = true;
      trusted-users = [
        (
          if isDarwin
          then "@admin"
          else "root"
        )
        "@wheel"
      ];
      allowed-users = ["*"];
      max-jobs = "auto";
      cores = 0;
      auto-optimise-store = true;
    };
    registry = {
      nixpkgs.flake = inputs.nixpkgs;
    };
    nixPath = [
      "nixpkgs=${inputs.nixpkgs}"
      "nixpkgs-stable=${inputs.nixpkgs-stable}"
      "home-manager=${inputs.home}"
    ];
    extraOptions = ''
      experimental-features = nix-command flakes
      min-free = 536870912
      keep-outputs = true
      keep-derivations = true
      fallback = true
    '';
  };
}
