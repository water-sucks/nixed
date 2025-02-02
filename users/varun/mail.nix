{
  config,
  pkgs,
}: let
  inherit (pkgs) lib;
  inherit (pkgs.stdenv) isLinux;

  sopsEmailPasswordBlock = key: {
    sopsFile = ./secrets/email.yml;
    format = "yaml";
    inherit key;
  };

  cat = "${pkgs.coreutils}/bin/cat";
in
  lib.mkMerge [
    {
      sops.secrets.email-password = sopsEmailPasswordBlock "password";

      accounts.email = {
        maildirBasePath = "Mail";

        accounts = {
          personal = {
            primary = true;
            flavor = "fastmail.com";

            realName = "Varun Narravula";
            address = "varun@snare.dev";
            userName = "varun@snare.dev";
            passwordCommand = "${cat} ${config.sops.secrets.email-password.path}";

            aerc = {
              enable = true;
              extraAccounts = {
                folders-sort = ["Inbox" "Sent" "Drafts" "Archive" "Spam" "Trash"];
              };
            };

            msmtp.enable = true;
            mbsync = {
              enable = true;
              create = "both";
              expunge = "both";
              remove = "both";
            };
          };
        };
      };

      programs = {
        msmtp.enable = true;
        mbsync = {
          enable = true;
        };
      };
      services = {
        mbsync = {
          enable = true;
          frequency = "*:0/1";
        };
      };
    }

    (lib.mkIf isLinux {
      persistence = {
        directories = [
          "Mail"
        ];
      };
    })
  ]
