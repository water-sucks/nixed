{
  inputs,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isDarwin isLinux;
in {
  nix = {
    package = pkgs.nixVersions.latest;
    # Run GC every Sunday at 10:00 AM
    gc =
      {
        automatic = true;
      }
      // (lib.optionalAttrs isDarwin {
        interval = {
          Weekday = 0;
          Hour = 10;
          Minute = 0;
        };
      })
      // (lib.optionalAttrs isLinux {
        dates = "Sun *-*-* 10:00:00";
        persistent = true;
      });
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
        "recursive-nix"
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
