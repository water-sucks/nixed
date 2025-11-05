{
  description = "I've nixed any chance I have at human interaction by building this config.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-25.05";

    flake-parts.url = "github:hercules-ci/flake-parts";

    home.url = "github:nix-community/home-manager";
    home.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:nix-darwin/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    impermanence.url = "github:nix-community/impermanence";

    nixos-cli.url = "github:nix-community/nixos-cli";

    optnix.url = "github:water-sucks/optnix";

    sops-nix.url = "github:Mic92/sops-nix";

    nixago.url = "github:nix-community/nixago";
    nixago.inputs.nixpkgs.follows = "nixpkgs";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
        ./modules/options-doc.nix
        ./modules/srht.nix

        ./hosts/nixos
        ./hosts/darwin
        ./home
        ./pkgs
        ./templates
      ];

      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin"];

      perSystem = {system, ...}: {
        _module.args = {
          inherit self inputs;
          lib = nixpkgs.lib.extend (_: _: lib);

          pkgs = import nixpkgs {
            inherit system;
            overlays = [self.overlays.default];
            config.allowUnfree = true;
          };

          pkgsStable = import inputs.nixpkgs-stable {
            inherit system;
            overlays = [self.overlays.default];
            config.allowUnfree = true;
          };
        };
      };

      flake = {
        inherit lib;
      };
    };
}
