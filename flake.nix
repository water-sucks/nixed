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

    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixpkgs";

    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
    pre-commit-hooks.inputs.nixpkgs.follows = "nixpkgs";

    discord.url = "github:InternetUnexplorer/discord-overlay";
    discord.inputs.nixpkgs.follows = "nixpkgs";

    leftwm.url = "github:leftwm/leftwm/0.4.0";
    leftwm.inputs.nixpkgs.follows = "nixpkgs";
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
      imports = [
        ./hosts/nixos
        ./hosts/darwin
        ./home
        ./pkgs
      ];

      systems = ["x86_64-linux" "x86_64-darwin"];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        overlays = with inputs;
          [
            agenix.overlay
            discord.overlay
            leftwm.overlay
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

        formatter = pkgs.writeShellScriptBin "alejandra-quiet" ''
          exec ${pkgs.alejandra}/bin/alejandra -q $@;
        '';

        checks = import ./checks.nix {inherit inputs pkgs;};

        devShells = let
          shell = import ./shell.nix;
        in {
          default = shell {inherit self pkgs;};
          ci = shell {
            inherit self pkgs;
            ci = true;
          };
        };
      };

      flake = {
        inherit lib;
      };
    };
}
