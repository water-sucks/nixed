{
  inputs,
  self,
  withSystem,
  ...
}: let
  inherit (self.lib) flattenTree rakeLeaves genModules genHosts;

  mkDarwin = hostname: configuration: {system ? "x86_64-darwin", ...}:
    withSystem system ({
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
        modules = with inputs; [
          agenix.nixosModules.age
          home.darwinModules.home-manager
          (import configuration)
          {
            networking.hostName = hostname;
            nixpkgs.config.allowUnfree = true;
          }
          (args: {
            imports =
              (genModules args "profiles" ../profiles) # Common profiles
              ++ (genModules args "profiles" ./profiles) # nix-darwin profiles
              ++ (genModules args "users" ../../users) # Users
              ++ (lib.attrValues (flattenTree (rakeLeaves ../modules))) # Common modules
              ++ (lib.attrValues (flattenTree (rakeLeaves ./modules))); # nix-darwin modules
          })
        ];
      });

  generatedHosts = genHosts mkDarwin ./machines;
in {
  flake = {
    darwinConfigurations = with generatedHosts; {
      CharlesWoodson = CharlesWoodson {};
      SebastianJanikowski = SebastianJanikowski {};
    };
  };
}