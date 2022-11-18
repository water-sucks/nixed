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
    flake-parts.lib.mkFlake {inherit self;} {
      imports = [
        ./hosts/nixos
        ./hosts/darwin
        ./home
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
            (_final: _prev: {
              stable = import nixpkgs-stable {
                inherit system;
                config.allowUnfree = true;
              };
              pr195816 = let
                nixpkgs' = (import nixpkgs {inherit system;}).applyPatches {
                  name = "nixpkgs-patched-195816";
                  src = nixpkgs;
                  patches = [./overrides/patches/nitropy-update.patch];
                };
              in
                import nixpkgs' {
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

        formatter = pkgs.writeShellScriptBin "alejandra-quiet" ''
          exec ${pkgs.alejandra}/bin/alejandra -q $@;
        '';

        checks = import ./checks.nix {inherit inputs pkgs;};

        devShells.default = import ./shell.nix {inherit self pkgs;};
      };

      flake = {
        inherit lib;
      };
    };
}
