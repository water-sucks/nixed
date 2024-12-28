{pkgs, ...}: {
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
      };

      filters = {
        "text/html" = "html | colorize";
        "text/plain" = "colorize";
        "text/calendar" = "calendar";
        "message/delivery-status" = "colorize";
        "message/rfc822" = "colorize";
        "image/*" = "${pkgs.imv}/bin/imv -";
      };
    };

    # Credit to https://github.com/nmasur/dotfiles/blob/bee5631fab4d9a0c1c61f079c11bc66c42d52d96/modules/common/mail/aerc.nix#L22
    # for these keybinds. I couldn't figure out how to use aerc for the life of me until I saw this. Thanks bro.
    extraBinds = {
      global = {
        "<C-p>" = ":prev-tab<Enter>";
        "<C-n>" = ":next-tab <Enter>";
        "<C-t>" = ":term<Enter>";
        "?" = ":help keys<Enter>";
      };

      messages = {
        q = ":quit<Enter>";

        j = ":next <Enter>";
        "<Down>" = ":next<Enter>";
        "<C-d>" = ":next 50%<Enter>";
        "<C-f>" = ":next 100%<Enter>";
        "<PgDn>" = ":next 100%<Enter>";

        k = ":prev <Enter>";
        "<Up>" = ":prev<Enter>";
        "<C-u>" = ":prev 50%<Enter>";
        "<C-b>" = ":prev 100%<Enter>";
        "<PgUp>" = ":prev 100%<Enter>";

        g = ":select 0 <Enter>";
        G = ":select -1<Enter>";

        H = ":collapse-folder<Enter>";
        J = ":next-folder<Enter>";
        K = ":prev-folder<Enter>";
        L = ":expand-folder<Enter>";

        v = ":mark -t<Enter>";
        V = ":mark -v<Enter>";

        T = ":toggle-threads<Enter>";

        "<Enter>" = ":view<Enter>";
        d = ":prompt 'Really delete this message?' 'delete-message'<Enter>";
        D = ":move Trash<Enter>";
        A = ":archive flat<Enter>";

        C = ":compose<Enter>";

        rr = ":reply -a<Enter>";
        rq = ":reply -aq<Enter>";
        Rr = ":reply<Enter>";
        Rq = ":reply -q<Enter>";

        c = ":cf<space>";
        "$" = ":term<space>";
        "!" = ":term<space>";
        "|" = ":pipe<space>";

        "/" = ":search<space>-a<space>";
        "\\" = ":filter <space>";
        n = ":next-result<Enter>";
        N = ":prev-result<Enter>";
        "<Esc>" = ":clear<Enter>";
      };

      "messages:folder=Drafts" = {
        "<Enter>" = ":recall<Enter>";
      };

      view = {
        "/" = ":toggle-key-passthrough <Enter> /";
        q = ":close<Enter>";
        O = ":open<Enter>";
        S = ":save<space>";
        "|" = ":pipe<space>";
        D = ":move Trash<Enter>";
        A = ":archive flat<Enter>";

        "<C-l>" = ":open-link <space>";

        f = ":forward <Enter>";
        rr = ":reply -a<Enter>";
        rq = ":reply -aq<Enter>";
        Rr = ":reply<Enter>";
        Rq = ":reply -q<Enter>";

        H = ":toggle-headers<Enter>";
        "<C-k>" = ":prev-part<Enter>";
        "<C-j>" = ":next-part<Enter>";
        J = ":next <Enter>";
        K = ":prev<Enter>";
      };

      "view::passthrough" = {
        "$noinherit" = "true";
        "$ex" = "<C-x>";
        "<Esc>" = ":toggle-key-passthrough<Enter>";
      };

      compose = {
        # Keybindings used when the embedded terminal is not selected in the compose
        # view
        "$noinherit" = "true";
        "$ex" = "<C-x>";
        "<C-k>" = ":prev-field<Enter>";
        "<C-j>" = ":next-field<Enter>";
        "<A-p>" = ":switch-account -p<Enter>";
        "<A-n>" = ":switch-account -n<Enter>";
        "<tab>" = ":next-field<Enter>";
        "<C-p>" = ":prev-tab<Enter>";
        "<C-n>" = ":next-tab<Enter>";
      };

      "compose::editor" = {
        # Keybindings used when the embedded terminal is selected in the compose view
        "$noinherit" = "true";
        "$ex" = "<C-x>";
        "<C-k>" = ":prev-field<Enter>";
        "<C-j>" = ":next-field<Enter>";
        "<C-p>" = ":prev-tab<Enter>";
        "<C-n>" = ":next-tab<Enter>";
      };

      "compose::review" = {
        # Keybindings used when reviewing a message to be sent
        y = ":send <Enter>";
        n = ":abort<Enter>";
        p = ":postpone<Enter>";
        q = ":choose -o d discard abort -o p postpone postpone<Enter>";
        e = ":edit<Enter>";
        a = ":attach<space>";
        d = ":detach<space>";
      };

      terminal = {
        "$noinherit" = "true";
        "$ex" = "<C-x>";
        "<C-p>" = ":prev-tab<Enter>";
        "<C-n>" = ":next-tab<Enter>";
      };
    };
  };

  home.packages = with pkgs; [
    w3m
    dante
  ];
}
