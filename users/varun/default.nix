{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in {
  users.users.varun =
    {
      uid = 1000;
      description = "Varun Narravula";
      shell = pkgs.zsh;
    }
    // (lib.optionalAttrs isLinux {
      extraGroups = ["wheel" "audio" "video" "input" "networkmanager" "libvirtd" "adbusers" "dialout" "docker"];
      isNormalUser = true;
    });

  home-manager.users.varun = {config, ...}:
    lib.mkMerge [
      # User-specific program configuration
      {
        programs.git = {
          userEmail = "varun@snare.dev";
          userName = "Varun Narravula";
          signing = {
            key = "A1F17E43F6747FC0";
            signByDefault = true;
          };
        };
        programs.ssh.githubAccounts = {
          "water-sucks" = {email = "varun@snare.dev";};
        };
        home.sessionVariables = lib.mkIf isLinux {
          NIXOS_CONFIG = "$HOME/.nixed"; # For `nixos-cli`
        };
        programs.gpg.publicKeys = [
          {
            source = ./pgp.asc;
            trust = 5;
          }
        ];

        openrgb.profile = "darkrose";

        sops = let
          secretBlock = sopsFile: secretName: {
            inherit sopsFile;
            format = "yaml";
            key = secretName;
          };

          atuinSecretBlock = secretBlock ./secrets/atuin.yml;
        in {
          # This may be overridden due to impermanence.
          age.keyFile = lib.mkDefault "${config.home.homeDirectory}/.sops_key";
          secrets = {
            atuin-username = atuinSecretBlock "username";
            atuin-password = atuinSecretBlock "password";
            atuin-enc-key = atuinSecretBlock "encryption_key";
          };
        };
      }
      {
        profiles = {
          base.enable = true;
          dev.enable = true;
          apps.enable = true;
        };
      }
      (lib.mkIf isLinux {
        profiles = {
          graphical = {
            enable = true;
            darwin-wallpaper.enable = false;
            x11.enable = true;
            wayland.enable = true;
          };
        };

        persistence.directory = "/persist/home/varun";

        home.persistence.${config.persistence.directory} = {
          directories = [
            ".nixed"
            "Code"
            "Documents"
            "Downloads"
            "Music"
            "Pictures"
            "Videos"
            "VMs"
          ];
          allowOther = true;
        };
      })
      (lib.mkIf isDarwin {
        profiles = {
          graphical = {
            darwin-wallpaper.enable = true;
          };
        };
      })
    ];
}
