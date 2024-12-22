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

  notifierScript = title: message:
    pkgs.writeShellScript "new-mail-notification.sh" (
      # TODO: add app icon for darwin :{
      # Apparently this doesn't work with osascript
      if isDarwin
      then ''
        osascript -e "display notification \"Go check it out.\" with title \"You've got mail!\""
      ''
      else ''
        ${pkgs.libnotify}/bin/notify-send \
          -i ${../../assets/mail.svg} \
          "${title}" \
          "${message}"
      ''
    );

  cat = "${pkgs.coreutils}/bin/cat";
in
  lib.mkMerge [
    {
      sops.secrets.email-password = sopsEmailPasswordBlock "password";
      sops.secrets.byggr-email-password = sopsEmailPasswordBlock "byggr-password";

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
            imapnotify = let
              notify = notifierScript "You've got mail!" "Go check it out.";
            in {
              enable = true;
              onNotify = ''${pkgs.isync}/bin/mbsync personal && ${notify}'';
            };
          };

          work = {
            primary = false;
            flavor = "gmail.com";

            realName = "Varun Narravula";
            address = "vnarravula@byggr.ai";
            userName = "vnarravula@byggr.ai";
            passwordCommand = "${cat} ${config.sops.secrets.byggr-email-password.path}";

            aerc = {
              enable = true;
              extraAccounts = {
                folders-sort = ["Inbox" "Starred" "Sent" "Drafts" "Archive" "Spam" "Trash"];
                copy-to = "Sent";
                archive = "Archive";
                postpone = "Drafts";
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
            imapnotify = let
              notify = notifierScript "You've got mail from work!" "Go check it out.";
            in {
              enable = true;
              onNotify = ''${pkgs.isync}/bin/mbsync work && ${notify}'';
            };
          };
        };
      };

      programs = {
        msmtp.enable = true;
        mbsync.enable = true;
      };
      services.imapnotify.enable = true;
    }

    (lib.mkIf isLinux {
      persistence = {
        directories = [
          "Mail"
        ];
      };
    })
  ]
