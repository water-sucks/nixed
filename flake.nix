{
  description = "I've nixed any chance I have at human interaction by building this config.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/release-22.05";

    utils.url = "github:numtide/flake-utils";

    digga.url = "github:divnix/digga";
    digga.inputs.nixpkgs.follows = "nixpkgs";
    digga.inputs.nixlib.follows = "nixpkgs";
    digga.inputs.home-manager.follows = "home";
    digga.inputs.deploy.follows = "deploy";

    home.url = "github:nix-community/home-manager";
    home.inputs.nixpkgs.follows = "nixpkgs";

    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixpkgs";

    deploy.url = "github:input-output-hk/deploy-rs";
    deploy.inputs.nixpkgs.follows = "nixpkgs";

    alejandra.url = "github:kamadorueda/alejandra";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";

    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixpkgs";

    leftwm.url = "github:leftwm/leftwm";
    leftwm.inputs.nixpkgs.follows = "nixpkgs";

    discord.url = "github:InternetUnexplorer/discord-overlay";
    discord.inputs.nixpkgs.follows = "nixpkgs";

    nil.url = "github:oxalica/nil";
    nil.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    digga,
    nixpkgs,
    utils,
    home,
    agenix,
    deploy,
    ...
  } @ inputs: let
    supportedSystems = [
      "x86_64-darwin"
      "x86_64-linux"
    ];
  in
    (digga.lib.mkFlake {
      inherit self inputs;

      channelsConfig.allowUnfree = true;

      channels = {
        nixpkgs = {
          imports = [
            (digga.lib.importOverlays ./overlays)
          ];
          overlays = with inputs; [
            leftwm.overlay
            discord.overlay
            alejandra.overlay
          ];
        };
      };

      lib = import ./lib {lib = digga.lib // nixpkgs.lib;};

      sharedOverlays = [
        (_final: prev: {
          __dontExport = true;
          lib = prev.lib.extend (_lfinal: _lprev: {
            our = self.lib;
          });
        })

        agenix.overlay
        (import ./pkgs)
      ];

      nixos = {
        hostDefaults = {
          system = "x86_64-linux";
          channelName = "nixpkgs";
          imports = [
            (digga.lib.importExportableModules ./modules/common)
            # (digga.lib.importExportableModules ./modules/nixos)
          ];
          modules = [
            {lib.our = self.lib;}
            home.nixosModules.home-manager
            agenix.nixosModules.age
          ];
        };

        imports = [(digga.lib.importHosts ./hosts/nixos)];
        hosts = {
          DerekCarr = {};
          HunterRenfrow = {};
        };
        importables = rec {
          profiles =
            digga.lib.rakeLeaves ./profiles/common
            // digga.lib.rakeLeaves ./profiles/nixos
            // {
              users = digga.lib.rakeLeaves ./users;
            };
          suites = with profiles; rec {
            base = [
              nix
              core
              boot
              caches
              ssh
              pam
              fonts
              fontconfig
              kmscon
              secrets
              users.common
            ];
            graphical = [
              dot # I only need DoT privacy on machines with GUI environments
              wm-helper
              greetd
              sound
              bluetooth
              i18n
            ];
            dev = [
              android
            ];
            virt = [
              kvm
            ];
          };
        };
      };

      darwin = {
        hostDefaults = {
          system = "x86_64-darwin";
          channelName = "nixpkgs";
          imports = [
            (digga.lib.importExportableModules ./modules/common)
            (digga.lib.importExportableModules ./modules/darwin)
          ];
          modules = [
            {lib.our = self.lib;}
            home.darwinModules.home-manager
            agenix.nixosModules.age
          ];
        };

        imports = [(digga.lib.importHosts ./hosts/darwin)];
        hosts = {
          CharlesWoodson = {};
          SebastianJanikowski = {};
        };
        importables = rec {
          profiles =
            digga.lib.rakeLeaves ./profiles/common
            // digga.lib.rakeLeaves ./profiles/darwin
            // {
              users = digga.lib.rakeLeaves ./users;
            };
          suites = with profiles; rec {
            base = [
              nix
              core
              caches
              fonts
              defaults
            ];
            brew = with homebrew; [
              homebrew.brew
              vitals
              security
              dev
              multimedia
              messaging
            ];
          };
        };
      };

      home = {
        imports = [(digga.lib.importExportableModules ./users/modules)];
        modules = [];
        importables = rec {
          profiles = digga.lib.rakeLeaves ./users/profiles;
          suites = with profiles; rec {
            base = [
              zsh
              nerdfetch
              starship
              fuck
              exa
              bat
              zoxide
              nvim
            ];
            dev = [
              direnv
              ssh
              git
              tmux
              go
              python
            ];
            # Linux only!
            graphical = [
              # X11 (not using)
              # leftwm
              # picom
              # polybar
              # feh
              # xsecurelock

              # Wayland
              river
              waybar

              # Other
              xdg
              gtk
              dconf
              fcitx5
              rofi
              dunst
            ];
            apps = [
              kitty
              firefox
              chromium
              tor
              i2p
              protonvpn
              zathura
              music
              messaging
              filen
              passwords
              insomnia
            ];
          };
        };
        users = {};
      };

      devshell = ./shell;

      homeConfigurations = digga.lib.mkHomeConfigurations self.nixosConfigurations;

      deploy.nodes = digga.lib.mkDeployNodes self.nixosConfigurations {};
    })
    // utils.lib.eachSystem supportedSystems (system: {
      formatter = inputs.alejandra.defaultPackage.${system};
    });
}
