{
  config,
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
      programs.zsh.initExtra = ''
        export GPG_TTY="$(tty)"
      '';
    })
    (lib.mkIf isLinux {
      home.persistence.${config.persistence.directory} = {
        directories = [".gnupg"];
      };

      services.gpg-agent = {
        enable = true;
        pinentryPackage = pkgs.pinentry-curses;
      };
    })
  ]
