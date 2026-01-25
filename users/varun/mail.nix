{
  config,
  pkgs,
}: let
  inherit (pkgs) lib;
  inherit (pkgs.stdenv) isLinux isDarwin;

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

            imapnotify = {
              enable = true;
              onNotify = ''${pkgs.isync}/bin/mbsync personal'';
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
      services.imapnotify = {
        enable = true;
      };
    }

    (lib.mkIf isLinux {
      services.mbsync = {
        enable = true;
        frequency = "*:0/1";
      };

      persistence = {
        directories = [
          "Mail"
        ];
      };
    })

    (lib.mkIf isDarwin {
      launchd.agents.mbsync = {
        enable = true;
        config = {
          ProgramArguments = ["${pkgs.isync}/bin/mbsync" "-a"];
          ProcessType = "Background";

          StandardOutPath = "/tmp/mbsync.out";
          StandardErrPath = "/tmp/mbsync.err";

          RunAtLoad = false;
          KeepAlive = false;

          StartCalendarInterval = [
            {
              Minute = 1;
            }
          ];
        };
      };
    })
  ]
