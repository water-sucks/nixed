{
  pkgs,
  lib,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) isLinux;
in
  lib.mkMerge [
    {
      programs.ssh = {
        enable = true;
        enableDefaultConfig = false;

        includes = ["~/.config/ssh/config.local"];
        settings = {
          "*" = {
            AddKeysToAgent = "yes";
            AddressFamily = "inet";
            ChallengeResponseAuthentication = "no";
            ForwardAgent = false;
            ForwardX11 = false;
            ForwardX11Trusted = false;
            PasswordAuthentication = "yes";
            ServerAliveCountMax = 2;
            ServerAliveInterval = 300;
            StrictHostKeyChecking = "ask";
            VisualHostKey = "yes";
          };
        };
      };
    }
    (lib.mkIf isLinux {
      persistence = {
        directories = [
          ".ssh"
          ".config/ssh"
        ];
      };
    })
  ]
