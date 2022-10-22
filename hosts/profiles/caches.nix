{lib, ...}: let
  caches = [
    "https://nix-community.cachix.org"
  ];

  keys = [
    "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
  ];
in {
  nix.extraOptions = ''
    extra-substituters = ${lib.concatStringsSep " " caches}
    extra-trusted-public-keys = ${lib.concatStringsSep " " keys}
  '';
}
