{
  description = "I've nixed any chance I have at human interaction by building this config.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-24.11";

    flake-parts.url = "github:hercules-ci/flake-parts";

    home.url = "github:nix-community/home-manager";
    home.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    impermanence.url = "github:nix-community/impermanence";

    nixos-cli.url = "github:water-sucks/nixos/rewrite";

    sops-nix.url = "github:Mic92/sops-nix";

    nixago.url = "github:nix-community/nixago";
    nixago.inputs.nixpkgs.follows = "nixpkgs";

    nix-colors.url = "github:Misterio77/nix-colors";
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
      # This is for nixd, a little bit of a misleading name
      # but this exposes module options from flake-parts.
      debug = true;

      imports = [
        ./modules/shell.nix
        ./modules/nvfetcher.nix
        ./modules/ssh-keys.nix

        ./hosts/nixos
        ./hosts/darwin
        ./home
        ./pkgs
        ./templates
      ];

      systems = ["x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin"];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        overlays = with inputs;
          [
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
            })
          ]
          ++ (map import (with lib; collectLeaves ./overrides));
      in {
        _module.args = {
          inherit self inputs;
          lib = nixpkgs.lib.extend (_: _: lib);
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
