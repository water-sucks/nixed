{
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    programs.ssh = {
      enable = true;
      enableDefaultConfig = false;

      includes = ["~/.config/ssh/config.local"];

      matchBlocks = {
        "*" = {
          addressFamily = "inet";
          forwardAgent = false;
          forwardX11 = false;
          forwardX11Trusted = false;
          serverAliveInterval = 300;
          serverAliveCountMax = 2;

          extraOptions = {
            AddKeysToAgent = "yes";
            ChallengeResponseAuthentication = "no";
            PasswordAuthentication = "yes";
            StrictHostKeyChecking = "ask";
            VisualHostKey = "yes";
          };
        };
      };
    };
  }
  (lib.mkIf pkgs.stdenv.isLinux {
    persistence = {
      directories = [
        ".ssh"
        ".config/ssh"
      ];
    };
  })
]
