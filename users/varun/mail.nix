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
      sops.secrets.work-email-password = sopsEmailPasswordBlock "work-password";

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

          work = {
            primary = false;
            flavor = "gmail.com";

            realName = "Varun Narravula";
            address = "varun@pangolin.net";
            userName = "varun@pangolin.net";
            passwordCommand = "${cat} ${config.sops.secrets.work-email-password.path}";

            aerc = {
              enable = true;
              extraAccounts = {
                folders-sort = ["Inbox" "Starred" "Sent" "Drafts" "Archive" "Spam" "Trash"];
              };
            };

            msmtp.enable = true;
            mbsync = {
              enable = true;
              create = "both";
              expunge = "both";
              remove = "both";
              groups.work.channels = let
                channelConfigBlock = _: v:
                  v
                  // {
                    extraConfig = {
                      Create = "Near";
                      CopyArrivalDate = "yes";
                      MaxMessages = 1000000;
                      MaxSize = "10m";
                      Sync = "All";
                      SyncState = "*";
                    };
                  };
              in
                lib.mapAttrs channelConfigBlock {
                  inbox = {
                    farPattern = "";
                    nearPattern = "Inbox";
                  };
                  starred = {
                    farPattern = "[Gmail]/Starred";
                    nearPattern = "Starred";
                  };
                  sent = {
                    farPattern = "[Gmail]/Sent Mail";
                    nearPattern = "Sent";
                  };
                  drafts = {
                    farPattern = "[Gmail]/Drafts";
                    nearPattern = "Drafts";
                  };
                  archive = {
                    farPattern = "[Gmail]/All Mail";
                    nearPattern = "Archive";
                  };
                  spam = {
                    farPattern = "[Gmail]/Spam";
                    nearPattern = "Spam";
                  };
                  trash = {
                    farPattern = "[Gmail]/Trash";
                    nearPattern = "Trash";
                  };
                };
            };

            imapnotify = {
              enable = true;
              onNotify = ''${pkgs.isync}/bin/mbsync work'';
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
