{
  config,
  pkgs,
}: let
  inherit (pkgs) lib;
  inherit (pkgs.stdenv) isLinux isDarwin;

  notifierScript = pkgs.writeShellScript "new-mail-notification.sh" (
    # TODO: add app icon for darwin :{
    # Apparently this doesn't work with osascript
    if isDarwin
    then ''
      osascript -e "display notification \"Go check it out.\" with title \"You've got mail!\""
    ''
    else ''
      ${pkgs.libnotify}/bin/notify-send \
        -i ${../../assets/mail.svg} \
        "You've got mail!" \
        "Go check it out."
    ''
  );
in
  lib.mkMerge [
    {
      sops.secrets.email-password = {
        sopsFile = ./secrets/email.yml;
        format = "yaml";
        key = "password";
      };

      accounts.email = {
        maildirBasePath = "Mail";

        accounts = {
          personal = {
            primary = true;
            flavor = "fastmail.com";

            realName = "Varun Narravula";
            address = "varun@snare.dev";
            userName = "varun@snare.dev";
            passwordCommand = "cat ${config.sops.secrets.email-password.path}";

            aerc.enable = true;
            msmtp.enable = true;
            mbsync = {
              enable = true;

              create = "both";
              expunge = "both";
              remove = "both";
            };
            imapnotify = {
              enable = true;
              onNotify = ''${pkgs.isync}/bin/mbsync personal && ${notifierScript}'';
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
      home.persistence."${config.persistence.directory}" = {
        directories = [
          "Mail"
        ];
      };
    })
  ]
