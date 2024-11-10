{
  inputs,
  self,
  withSystem,
  ...
}: let
  inherit (self.lib) collectLeaves genModules genHosts;

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
          home.darwinModules.home-manager
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
