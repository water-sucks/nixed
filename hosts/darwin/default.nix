{
  inputs,
  self,
  ...
}: let
  mkDarwin = hostname: configuration: {system, ...}:
    inputs.darwin.lib.darwinSystem {
      inherit system;
      specialArgs = {
        inherit self inputs;
      };
      modules = with inputs; [
        home.darwinModules.home-manager
        optnix.darwinModules.optnix
        {
          nixpkgs = {
            hostPlatform = system;
            overlays = [self.overlays.default];
            config.allowUnfree = true;
          };
          networking.hostName = hostname;
        }
        ../modules/user-defaults.nix
        configuration
      ];
    };
in {
  flake = {
    darwinConfigurations = {
      TimBrown = mkDarwin "TimBrown" ./machines/TimBrown {system = "aarch64-darwin";};
    };
  };
}
