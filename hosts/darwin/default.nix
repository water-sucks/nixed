{
  inputs,
  self,
  withSystem,
  ...
}: let
  inherit (self.lib) collectLeaves genModules genHosts;

  mkDarwin = hostname: configuration: {system, ...}:
    withSystem system ({
      pkgs,
      lib,
      system,
      pkgsStable,
      ...
    }:
      inputs.darwin.lib.darwinSystem {
        inherit system;
        specialArgs = {
          inherit self inputs lib pkgs pkgsStable;
        };
        modules = with inputs; [
          home.darwinModules.home-manager
          optnix.darwinModules.optnix
          (import configuration)
          {
            networking.hostName = hostname;
          }
          (args: {
            imports =
              (genModules args "profiles" ../profiles) # Common profiles
              ++ (genModules args "profiles" ./profiles) # nix-darwin profiles
              ++ (genModules args "users" ../../users) # Users
              ++ (collectLeaves ../modules) # Common modules
              ++ (collectLeaves ./modules); # nix-darwin modules
          })
        ];
      });

  generatedHosts = genHosts mkDarwin ./machines;
in {
  flake = {
    darwinConfigurations = with generatedHosts; {
      TimBrown = TimBrown {system = "aarch64-darwin";};
    };
  };
}
