{
  inputs,
  self,
  ...
}: let
  defaultModuleList = with inputs; [
    sops-nix.nixosModules.sops
    impermanence.nixosModules.impermanence
    home.nixosModules.home-manager
    nixos-cli.nixosModules.nixos-cli
    optnix.nixosModules.optnix
    ../modules/user-defaults.nix
    ./modules/luks.nix
  ];

  mkNixOS = hostname: configuration: {
    system,
    modules ? defaultModuleList,
    ...
  }:
    inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit self inputs;
      };
      modules =
        modules
        ++ [
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
          configuration
        ];
    };
in {
  flake = {
    nixosConfigurations = {
      CharlesWoodson = mkNixOS "CharlesWoodson" ./machines/CharlesWoodson {system = "x86_64-linux";};
      SebastianJanikowski = mkNixOS "SebastianJanikowski" ./machines/SebastianJanikowski {system = "x86_64-linux";};

      BoJackson = mkNixOS "BoJackson" ./machines/BoJackson {
        system = "x86_64-linux";
        modules = with inputs; [
          sops-nix.nixosModules.sops
          impermanence.nixosModules.impermanence
          nixos-cli.nixosModules.nixos-cli
        ];
      };
    };
  };
}
