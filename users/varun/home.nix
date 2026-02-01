{
  config,
  lib,
  pkgs,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux isDarwin;
in
  {
    imports =
      [
        ../../home/profiles/apps
        ../../home/profiles/base
        ../../home/profiles/dev

        ./mail.nix
      ]
      ++ lib.optionals isLinux [../../home/profiles/graphical];

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
  // (lib.mkIf isLinux {
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
