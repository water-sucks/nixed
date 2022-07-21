{ self, config, pkgs, lib, ... }:

let
  inherit (pkgs.stdenv) isLinux isDarwin;

  caches = [
    "https://cache.nixos.org"
    "https://nix-community.cachix.org"
  ];

  keys = [
    "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
  ];
in
lib.mkMerge [
  (lib.mkIf isLinux {
    nix.settings = {
      substituters = caches;
      trusted-public-keys = keys;
    };
  })
  (lib.mkIf isDarwin {
    nix = {
      binaryCaches = caches;
      binaryCachePublicKeys = keys;
    };
  })
]
