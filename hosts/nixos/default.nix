{
  inputs,
  self,
  withSystem,
  ...
}: let
  inherit (self.lib) importModules collectLeaves genModules genHosts;

  mkNixOS = hostname: configuration: {system ? "x86_64-linux", ...}:
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
          sops-nix.nixosModules.sops
          impermanence.nixosModules.impermanence
          home.nixosModules.home-manager
          nixos-cli.nixosModules.nixos-cli
          (import configuration)
          {
            networking.hostName = hostname;
            users.mutableUsers = false;
            programs.fuse.userAllowOther = true; # Used for home.persistence.allowOther options, must be enabled
            system.configurationRevision = self.rev or "dirty";
          }
          (args: {
            imports =
              (genModules args "profiles" ../profiles) # Common profiles
              ++ (genModules args "profiles" ./profiles) # NixOS profiles
              ++ (genModules args "users" ../../users) # Users
              ++ (collectLeaves ../modules) # Common modules
              ++ (collectLeaves ./modules); # NixOS modules
          })
        ];
      });

  generatedHosts = genHosts mkNixOS ./machines;
in {
  flake = {
    nixosConfigurations = with generatedHosts; {
      CharlesWoodson = CharlesWoodson {};
      SebastianJanikowski = SebastianJanikowski {};
    };

    nixosModules = let
      allModules = importModules ./modules;
    in
      builtins.removeAttrs allModules ["user-defaults"];
  };
}
