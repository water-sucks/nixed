inputs: let
  inherit (inputs.nixpkgs) lib;

  importers = import ./importers.nix lib;
  generators = import ./generators.nix lib;
  filter-packages = import ./filter-packages.nix;
in
  importers // generators // filter-packages
