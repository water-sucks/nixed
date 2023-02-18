{
  description = "I've nixed any chance I have at human interaction by building this config.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-22.11";
    nixpkgs-pr195816.url = "github:jojosch/nixpkgs/fix-pynitrokey";

    flake-parts.url = "github:hercules-ci/flake-parts";

    home.url = "github:nix-community/home-manager";
    home.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    impermanence.url = "github:nix-community/impermanence";

    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixpkgs";

    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
    pre-commit-hooks.inputs.nixpkgs.follows = "nixpkgs";

    treefmt.url = "github:numtide/treefmt-nix";

    neovim.url = "github:nix-community/neovim-nightly-overlay";
    neovim.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    flake-parts,
    ...
  } @ inputs: let
    lib = import ./lib inputs;
  in
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = with inputs;
        [
          pre-commit-hooks.flakeModule
          treefmt.flakeModule

          ./hosts/nixos
          ./hosts/darwin
          ./home
          ./pkgs
        ]
        ++ (lib.collectLeaves ./modules);

      systems = ["x86_64-linux" "x86_64-darwin"];

      perSystem = {
        config,
        pkgs,
        system,
        ...
      }: let
        overlays = with inputs;
          [
            agenix.overlays.default
            neovim.overlay
            self.overlays.default
            # Keeping this out of the exposed overlay, I don't want to
            # expose nvfetcher-generated stuff, that's annoying.
            (_final: _prev: {
              sources = pkgs.callPackage ./pkgs/_sources/generated.nix {};
            })
            (_final: _prev: {
              stable = import nixpkgs-stable {
                inherit system;
                config.allowUnfree = true;
              };
              pr195816 = import nixpkgs-pr195816 {
                inherit system;
                config.allowUnfree = true;
              };
            })
          ]
          ++ (map import (with lib; collectLeaves ./overrides));
      in {
        _module.args = {
          inherit self inputs lib;
          pkgs = import nixpkgs {
            inherit system overlays;
            config.allowUnfree = true;
          };
        };
      };

      flake = {
        inherit lib;
      };
    };
}
