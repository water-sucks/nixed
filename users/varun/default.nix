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
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDI19L//A/gqi0gWWqJufNEc8euufccLd3abrMoLnv+ZhmYQEkPkyTwz322n8PSLmPQ8Ev2aAZ0+MgSt7Xfu7lp/Puw8SoQpHx54EFi4825Xr5D/L6YduwoHgwi7Rrk129eAavX3hLLS9R1vvM0fklD4s8ESAsdZP9QycI2SIIq/dg4gAu7UjHSwMtOSAa+LEFqfNdvp0KOmJqCZacxBuRRVyd4yZPhxzJQI4a0tKh8aPb2FKJBn/p5c5E2jyUPDs/KAdMj8GUofSOXD8/3+RXtdGjMZDzWIBHljhlDKe6NlCcVuQ9Yzc10T8z6+Bv3AGR9cd005cdlv7BLgBxppCZYhuWtNvmGR6L7qhUmUSn/28VWXS8AXEqH/Kew3UCY+Q9m7sD2S/ZD+HX99cuc2eLjjbLZgL/YY+t+3+arflU6gFuFcH3008rEo/tOTo5CsZpTR/E1jD4OeqCR+MElD9gYwJZ4yAORPiHq6+w5WtWhFVEp/YXc9r4obW9cmfVpgaTT5wC/0/MUU4i6KgcKXMgR9M0vYhDqCMMKXjDTfRZ63muLHWg3S/sw7i+HTp5GsM9cyvQ+eM2tyOyv6P/+gqdw5Fbhza+408W3juqWdnGFZfeAr50do+tXNz6XSRTrDRHtN4ACj2LX3Ja37nqenaTspFyeFa2o3JfzeRIfVaxbQw== cardno:FF7F00 gpg-yubikey"
      ];
    });

  home-manager.users.varun = {
    config,
    pkgs,
    ...
  }:
    lib.mkMerge [
      (import ./mail.nix {inherit config pkgs;})
      # User-specific program configuration
      {
        programs.git.settings = {
          user.email = "varun@snare.dev";
          user.name = "Varun Narravula";
          signing = {
            key = "A1F17E43F6747FC0";
            signByDefault = true;
          };
        };
        programs.ssh = {
          githubAccounts = {
            "water-sucks" = {email = "varun@snare.dev";};
          };
          sourcehutAccounts = {
            "watersucks" = {email = "varun@snare.dev";};
          };
        };
        home.sessionVariables = lib.mkMerge [
          (lib.mkIf isLinux {
            NIXOS_CONFIG = "$HOME/.nixed";
          })
          (lib.mkIf isDarwin {
            NIX_DARWIN_CONFIG = "$HOME/.nixed";
          })
        ];
        programs.gpg.publicKeys = [
          {
            source = ./pgp.asc;
            trust = 5;
          }
        ];
        services.gpg-agent.sshKeys = [
          "522E3A7813B5D0B5D70E5A40A1F17E43F6747FC0"
        ];

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
            x11.enable = true;
            wayland.enable = true;
          };
        };

        openrgb.profile = "darkrose";

        persistence = {
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
        };
      })
    ];
}
