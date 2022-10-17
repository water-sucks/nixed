inputs: let
  inherit (inputs.nixpkgs) lib;

  importers = import ./importers.nix lib;
  generators = import ./generators.nix lib;
in
  lib // importers // generators
