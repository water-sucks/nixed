{
  pkgs,
  lib,
  ...
}: {
  programs.aerc = {
    enable = true;
    extraConfig = {
      general.unsafe-accounts-conf = true;

      ui = {
        this-day-time-format = ''"           15:04"'';
        this-year-time-format = "Mon Jan 02 15:04";
        timestamp-format = "2006-01-02 15:04";
        spinner = ''
          [ ⡿ ],[ ⣟ ],[ ⣯ ],[ ⣷ ],[ ⣾ ],[ ⣽ ],[ ⣻ ],[ ⢿ ]
        '';
      };

      hooks = {
        # TODO: I need to figure out a better notification system for
        # when aerc is _not_ running.
        # mail-received = ''exec ${pkgs.libnotify}/bin/notify-send -i ${../../../assets/mail.svg} "$AERC_FROM_NAME" "$AERC_SUBJECT"'';

        # This isn't optimal to sync all mailboxes, but this can of course be overridden.
        mail-deleted = lib.mkDefault "exec ${pkgs.isync}/bin/mbsync -a";
      };

      filters = {
        "text/plain" = "colorize";
        "text/html" = "html | colorize";
        "text/calendar" = "calendar";
        "message/delivery-status" = "colorize";
        "message/rfc822" = "colorize";
        "image/*" = "${pkgs.catimg}/bin/catimg -";
      };
    };
  };
}
