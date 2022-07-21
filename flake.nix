{
  description = "I've nixed any chance I have at human interaction by building this config.";

  inputs = {
    nixos.url = "github:nixos/nixpkgs/nixos-unstable";
    latest.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    digga.url = "github:divnix/digga";
    digga.inputs.nixpkgs.follows = "nixos";
    digga.inputs.nixlib.follows = "nixos";
    digga.inputs.home-manager.follows = "home";
    digga.inputs.deploy.follows = "deploy";

    home.url = "github:nix-community/home-manager";
    home.inputs.nixpkgs.follows = "nixos";

    darwin.url = "github:LnL7/nix-darwin";
    darwin.inputs.nixpkgs.follows = "nixos";

    deploy.url = "github:input-output-hk/deploy-rs";
    deploy.inputs.nixpkgs.follows = "nixos";

    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixos";

    leftwm.url = "github:leftwm/leftwm";
    leftwm.inputs.nixpkgs.follows = "nixos";

    discord.url = "github:InternetUnexplorer/discord-overlay";
    discord.inputs.nixpkgs.follows = "nixos";

    nixpkgs.follows = "nixos";
  };

  outputs =
    { self
    , digga
    , nixos
    , home
    , agenix
    , deploy
    , ...
    }@inputs:
    digga.lib.mkFlake {
      inherit self inputs;

      channelsConfig.allowUnfree = true;

      channels = {
        nixos = {
          imports = [
            (digga.lib.importOverlays ./overlays)
          ];
          overlays = with inputs; [
            leftwm.overlay
            discord.overlay
          ];
        };
        latest = { };
      };

      lib = import ./lib { lib = digga.lib // nixos.lib; };

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
          channelName = "nixos";
          imports = [
            (digga.lib.importExportableModules ./modules/common)
            # (digga.lib.importExportableModules ./modules/nixos) No modules yet
          ];
          modules = [
            { lib.our = self.lib; }
            digga.nixosModules.bootstrapIso
            digga.nixosModules.nixConfig
            home.nixosModules.home-manager
            agenix.nixosModules.age
          ];
        };

        imports = [ (digga.lib.importHosts ./hosts/nixos) ];
        hosts = {
          DerekCarr = { };
          HunterRenfrow = { };
        };
        importables = rec {
          profiles = digga.lib.rakeLeaves ./profiles/common //
            digga.lib.rakeLeaves ./profiles/nixos // {
            users = digga.lib.rakeLeaves ./users;
          };
          suites = with profiles; rec {
            base = [
              nix
              core
              caches
              ssh
              pam
              fonts
              kmscon
              users.common
            ];
            graphical = [
              dot # I only need DoT privacy on machines with GUI environments
              wm-helper
              gdm
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
          channelName = "nixos";
          imports = [
            (digga.lib.importExportableModules ./modules/common)
            (digga.lib.importExportableModules ./modules/darwin)
          ];
          modules = [
            { lib.our = self.lib; }
            home.darwinModules.home-manager
            agenix.nixosModules.age
          ];
        };

        imports = [ (digga.lib.importHosts ./hosts/darwin) ];
        hosts = {
          CharlesWoodson = { };
          SebastianJanikowski = { };
        };
        importables = rec {
          profiles = digga.lib.rakeLeaves ./profiles/common //
            digga.lib.rakeLeaves ./profiles/darwin // {
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
        imports = [ (digga.lib.importExportableModules ./users/modules) ];
        modules = [ ];
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
              leftwm
              xdg
              gtk
              dconf
              fcitx5
              picom
              polybar
              rofi
              dunst
              feh
              xsecurelock
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
        users = { };
      };

      devshell = ./shell;

      homeConfigurations = digga.lib.mkHomeConfigurations self.nixosConfigurations;

      deploy.nodes = digga.lib.mkDeployNodes self.nixosConfigurations { };
    }
  ;
}
