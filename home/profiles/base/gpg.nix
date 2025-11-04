{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;
in
  lib.mkMerge [
    {
      programs.gpg = {
        enable = true;
        settings = {
          trust-model = "tofu+pgp";
        };
      };
    }
    (lib.mkIf isDarwin {
      # Add gpg-agent configuration here,
      # since it isn't supported in HM
      home.file.".gnupg/gpg-agent.conf".text = ''
        grab
        pinentry-program ${pkgs.pinentry-curses}/bin/pinentry-curses
      '';
      programs.zsh.initContent = ''
        export GPG_TTY="$(tty)"
      '';
    })
    (lib.mkIf isLinux {
      persistence = {
        directories = [".gnupg"];
      };

      services.gpg-agent = {
        enable = true;
        pinentry.package = pkgs.pinentry-curses;
        defaultCacheTtl = 60 * 30;
        enableSshSupport = true;
      };

      systemd.user.services.gpg-agent = {
        Unit.RefuseManualStart = lib.mkForce false;
      };
    })
  ]
