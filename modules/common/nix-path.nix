{inputs, ...}: {
  nix.nixPath = [
    "nixpkgs=${inputs.nixpkgs}"
    "nixpkgs-stable=${inputs.nixpkgs-stable}"
    "home-manager=${inputs.home}"
  ];
}
