{
  config,
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux;
in
  lib.mkMerge [
    {
      programs.gpg = {
        enable = true;
        settings = {
          trust-model = "tofu+pgp";
        };
      };

      services.gpg-agent = {
        enable = true;
        pinentryPackage = pkgs.pinentry-curses;
      };
    }
    (lib.mkIf isLinux {
      home.persistence.${config.persistence.directory} = {
        directories = [".gnupg"];
      };
    })
  ]
