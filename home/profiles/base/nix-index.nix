{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv) isLinux isDarwin;

  nix-index-build = pkgs.writeShellScript "build-nix-index.sh" ''
    mkdir -p $HOME/.cache/nix-index
    cd $HOME/.cache/nix-index
    ${pkgs.nix-index}/bin/nix-index
  '';
in
  lib.mkMerge [
    {
      programs.nix-index = {
        enable = true;
        enableBashIntegration = true;
        enableZshIntegration = true;
      };
    }
    # Automatically build nix-index while I'm doing
    # my Sunday church gigs
    (lib.mkIf isLinux {
      systemd.user.services.nix-index-build = {
        Unit = {
          Description = "Build nix-index DB";
        };

        Service = {
          Type = "oneshot";
          ExecStart = "${nix-index-build}";
        };
      };

      systemd.user.timers.nix-index-build = {
        Unit = {
          Description = "Automatically build nix-index DB";
        };

        Timer = {
          OnCalendar = "Sun *-*-* 08:00:00";
          Persistent = false; # I don't want it building at boot, takes way too much time
          Unit = "nix-index-build.service";
          RandomizedDelaySec = 7200;
        };

        Install.WantedBy = ["timers.target"];
      };
    })
    (lib.mkIf isDarwin {
      launchd.agents.nix-index-build = {
        enable = true;
        config = {
          Program = "${nix-index-build}";
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
