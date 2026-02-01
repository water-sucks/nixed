{
  inputs,
  self,
  ...
}: let
  mkNixOS = hostname: configuration: {system, ...}:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit self inputs;
      };
      modules = with inputs; [
        sops-nix.nixosModules.sops
        impermanence.nixosModules.impermanence
        home.nixosModules.home-manager
        nixos-cli.nixosModules.nixos-cli
        optnix.nixosModules.optnix
        {
          nixpkgs = {
            hostPlatform = system;
            overlays = [self.overlays.default];
            config.allowUnfree = true;
          };
          networking.hostName = hostname;
          users.mutableUsers = false;
          programs.fuse.userAllowOther = true; # Used for home.persistence.allowOther options, must be enabled
          system.configurationRevision = self.rev or "dirty";
        }
        ../modules/user-defaults.nix
        ./modules/luks.nix
        configuration
      ];
    };
in {
  flake = {
    nixosConfigurations = {
      CharlesWoodson = mkNixOS "CharlesWoodson" ./machines/CharlesWoodson {system = "x86_64-linux";};
      SebastianJanikowski = mkNixOS "SebastianJanikowski" ./machines/SebastianJanikowski {system = "x86_64-linux";};
    };
  };
}
