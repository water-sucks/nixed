{
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
        pinentry.package = pkgs.pinentry-curses;
        defaultCacheTtl = 60 * 30;
        enableSshSupport = true;
      };
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [".gnupg"];
      };

      systemd.user.services.gpg-agent = {
        Unit.RefuseManualStart = lib.mkForce false;
      };
    })
  ]
