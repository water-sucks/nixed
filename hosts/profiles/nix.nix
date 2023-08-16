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
      sandbox = !isDarwin;
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
      nixpkgs-stable.flake = inputs.nixpkgs-stable;
    };
    nixPath = [
      "nixpkgs=${inputs.nixpkgs}"
      "nixpkgs-stable=${inputs.nixpkgs-stable}"
      "home-manager=${inputs.home}"
    ];
    extraOptions = let
      experimentalFeatures = builtins.concatStringsSep " " [
        "auto-allocate-uids"
        "ca-derivations"
        "flakes"
        "nix-command"
        "no-url-literals"
        "recursive-nix"
        "repl-flake"
      ];
    in ''
      experimental-features = ${experimentalFeatures}
      min-free = 536870912
      keep-outputs = true
      keep-derivations = true
      fallback = true
      warn-dirty = false
    '';
  };
}
