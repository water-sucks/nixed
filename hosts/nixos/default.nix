{
  inputs,
  self,
  withSystem,
  ...
}: let
  inherit (self.lib) flattenTree rakeLeaves genModules genHosts;

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
              (genModules args "profiles" ../profiles) # Common profiles
              ++ (genModules args "profiles" ./profiles) # NixOS profiles
              ++ (genModules args "users" ../../users) # Users
              ++ (lib.attrValues (flattenTree (rakeLeaves ../modules))) # Common modules
              ++ (lib.attrValues (flattenTree (rakeLeaves ./modules))); # NixOS modules
          })
        ];
      });

  generatedHosts = genHosts mkNixOS ./machines;
in {
  flake = {
    nixosConfigurations = with generatedHosts; {
      DerekCarr = DerekCarr {};
      HunterRenfrow = HunterRenfrow {};
    };

    # I have no NixOS modules to export yet, so I'll leave this here
    # as a placeholder until then.
  };
}
