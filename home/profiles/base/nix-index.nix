{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  uname =
    if isLinux
    then "${pkgs.coreutils}/bin/uname"
    else "uname";
  tr =
    if isLinux
    then "${pkgs.coreutils}/bin/tr"
    else "tr";
  ln =
    if isLinux
    then "${pkgs.coreutils}/bin/ln"
    else "ln";

  nix-index-update = pkgs.writeShellScriptBin "nix-index-update" ''
    filename="index-$(${uname} -m)-$(${uname} | ${tr} A-Z a-z)"
    mkdir -p $HOME/.cache/nix-index
    cd $HOME/.cache/nix-index

    # -N will only download a new version if there is an update.
    ${pkgs.wget}/bin/wget -q -N https://github.com/Mic92/nix-index-database/releases/latest/download/$filename
    ${ln} -f $filename files
  '';
in
  lib.mkMerge [
    {
      programs.nix-index = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
      };

      # For if I want to run this manually without
      # dealing with systemd/launchd shenanigans
      home.packages = [nix-index-update];
    }
    # Automatically update nix-index while I'm doing
    # my Sunday church gigs
    (lib.mkIf isLinux {
      systemd.user.services.nix-index-update = {
        Unit = {
          Description = "Download prebuilt nix-index";
        };

        Service = {
          Type = "oneshot";
          ExecStart = "${nix-index-update}/bin/nix-index-update";
        };
      };

      systemd.user.timers.nix-index-update = {
        Unit = {
          Description = "Automatically download prebuilt nix-index";
        };

        Timer = {
          OnCalendar = "Sun *-*-* 08:00:00";
          Persistent = false; # I don't want it downloading at boot, I may not have internet
          Unit = "nix-index-update.service";
          RandomizedDelaySec = 7200;
        };

        Install.WantedBy = ["timers.target"];
      };
    })
    (lib.mkIf isDarwin {
      launchd.agents.nix-index-update = {
        enable = true;
        config = {
          Program = "${nix-index-update}/bin/nix-index-update";
          ProcessType = "Background";

          StartCalendarInterval = [
            {
              Weekday = 0;
              Hour = 8;
              Minute = 0;
            }
          ];
        };
      };
    })
  ]
