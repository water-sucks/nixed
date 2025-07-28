{
  inputs,
  self,
  options,
  config,
  pkgs,
  lib,
  ...
}: let
  optnixLib = inputs.optnix.mkLib pkgs;
in {
  programs.optnix = {
    enable = true;
    settings = {
      min_score = 3;

      scopes = {
        CharlesWoodson = {
          description = "NixOS configuration for CharlesWoodson";
          options-list-file = optnixLib.mkOptionsList {
            inherit (self.nixosConfigurations.CharlesWoodson) options;
          };
          evaluator = "nix eval $NIXOS_CONFIG#nixosConfigurations.CharlesWoodson.config.{{ .Option }}";
        };

        SebastianJanikowski = {
          description = "NixOS configuration for SebastianJanikowski";
          options-list-file = optnixLib.mkOptionsList {
            inherit (self.nixosConfigurations.SebastianJanikowski) options;
          };
          evaluator = "nix eval $NIXOS_CONFIG#nixosConfigurations.SebastianJanikowski.config.{{ .Option }}";
        };

        TimBrown = {
          description = "nix-darwin configuration for TimBrown";
          options-list-file = optnixLib.mkOptionsList {
            inherit (self.darwinConfigurations.TimBrown) options;
          };
          evaluator = "nix eval $NIXOS_CONFIG#darwinConfigurations.TimBrown.config.{{ .Option }}";
        };

        MarcusAllen = {
          description = "nix-darwin configuration for MarcusAllen";
          options-list-file = optnixLib.mkOptionsList {
            inherit (self.darwinConfigurations.MarcusAllen) options;
          };
          evaluator = "nix eval $NIXOS_CONFIG#darwinConfigurations.MarcusAllen.config.{{ .Option }}";
        };

        home-manager = {
          description = "home-manager configuration for all systems";
          options-list-file = optnixLib.mkOptionsList {
            inherit options;
            transform = o:
              o
              // {
                name = lib.removePrefix "home-manager.users.${config.home.username}." o.name;
              };
          };
          evaluator = "";
        };
      };
    };
  };
}
