{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux isDarwin;

  # GUI pinentry, though ugly, is required so SSH-via-gpg-agent
  # is not tied to one pts. Linux is unchanged for now until I
  # find a solution for this upstream.
  pinentryPackage =
    if isDarwin
    then pkgs.pinentry_mac
    else pkgs.pinentry-curses;
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
        pinentry.package = pinentryPackage;
        defaultCacheTtl = 60 * 30;
        enableSshSupport = true;

        # HM's shell hooks run bare `gpg-connect-agent updatestartuptty` with no
        # timeout; a wedged agent hangs every new interactive shell.
        enableBashIntegration = false;
        enableFishIntegration = false;
        enableNushellIntegration = false;
        enableZshIntegration = false;
      };

      programs.zsh.initContent = ''
        export GPG_TTY=''${TTY:-$(tty)}
      '';
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
