{
  description = "I've nixed any chance I have at human interaction by building this config.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-22.05";

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
  };

  outputs = {
    self,
    nixpkgs,
    flake-parts,
    ...
  } @ inputs: let
    lib = import ./lib inputs;
  in
    flake-parts.lib.mkFlake {inherit self;} ({withSystem, ...}: {
      imports = [];

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
            (_final: _prev: {
              stable = import nixpkgs-stable {
                inherit system;
                config.allowUnfree = true;
              };
            })
            (import ./pkgs)
          ]
          ++ (map import (with lib; attrValues (flattenTree (rakeLeaves ./overrides))));
      in {
        _module.args = {
          inherit self inputs lib;
          pkgs = import nixpkgs {
            inherit system overlays;
            config.allowUnfree = true;
          };
        };

        formatter = pkgs.alejandra;

        checks = import ./checks.nix {inherit inputs pkgs;};

        devShells.default = import ./shell.nix {inherit self pkgs;};
      };

      flake = let
        mkNixOS = system: hostname: configuration:
          withSystem system ({
            pkgs,
            lib,
            system,
            ...
          }:
            lib.nixosSystem {
              inherit system;
              specialArgs = {
                inherit self inputs lib pkgs;
              };
              modules = with inputs; [
                agenix.nixosModules.age
                home.nixosModules.home-manager
                (import configuration)
                {
                  networking.hostName = hostname;
                  users.mutableUsers = false;
                  # I don't like having to manually set this, but the _module.args
                  # pkgs is not being passed properly for some reason; I'll look
                  # into this later.
                  nixpkgs = {
                    inherit pkgs;
                    config.allowUnfree = true;
                  };
                }
                (args: {
                  imports =
                    (with lib; genModules args "profiles" ./profiles/common)
                    ++ (with lib; genModules args "profiles" ./profiles/nixos)
                    ++ (with lib; genModules args "users" ./users)
                    ++ (with lib; attrValues (flattenTree (rakeLeaves ./modules/common)));
                })
              ];
            });

        mkDarwin = system: hostname: configuration:
          withSystem system (ctx @ {
            pkgs,
            lib,
            system,
            ...
          }:
            inputs.darwin.lib.darwinSystem {
              inherit system;
              specialArgs = {
                inherit self inputs lib pkgs;
              };
              modules = with inputs;
                [
                  agenix.nixosModules.age
                  home.darwinModules.home-manager
                  (import configuration)
                  {
                    networking.hostName = hostname;
                    nixpkgs.config.allowUnfree = true;
                  }
                ]
                ++ (with lib; genModules ctx "profiles" ./profiles/common)
                ++ (with lib; genModules ctx "profiles" ./profiles/darwin)
                ++ (with lib; genModules ctx "users" ./users)
                ++ (with lib; attrValues (flattenTree (rakeLeaves ./modules/common)))
                ++ (with lib; attrValues (flattenTree (rakeLeaves ./modules/darwin)));
            });

        genHosts = builder: hosts: with lib; mapAttrs builder (rakeLeaves hosts);
      in {
        inherit lib;

        nixosConfigurations = genHosts (mkNixOS "x86_64-linux") ./hosts/nixos;

        darwinConfigurations = genHosts (mkDarwin "x86_64-darwin") ./hosts/darwin;
      };
    });
}
