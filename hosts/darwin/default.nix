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
        determinate.darwinModules.default
        home.darwinModules.home-manager
        optnix.darwinModules.optnix
        ({lib, ...}: {
          nixpkgs = {
            hostPlatform = system;
            overlays = [self.overlays.default];
            config.allowUnfree = true;
          };
          networking.hostName = hostname;
          determinateNix.enable = lib.mkDefault false;
        })
        ../modules/user-defaults.nix
        configuration
      ];
    };
in {
  flake = {
    darwinConfigurations = {
      TimBrown = mkDarwin "TimBrown" ./machines/TimBrown {system = "aarch64-darwin";};
      MarcusAllen = mkDarwin "MarcusAllen" ./machines/MarcusAllen {system = "aarch64-darwin";};
    };
  };
}
