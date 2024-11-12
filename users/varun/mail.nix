{
  config,
  pkgs,
}: {
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
          onNotify = ''${pkgs.isync}/bin/mbsync personal && ${pkgs.libnotify}/bin/notify-send -i ${../../assets/mail.svg} "You've got mail\!" "Go check it out."'';
        };
      };
    };
  };

  programs = {
    msmtp.enable = true;
    mbsync.enable = true;
  };
  services.imapnotify.enable = true;

  home.persistence."${config.persistence.directory}" = {
    directories = [
      "Mail"
    ];
  };
}
