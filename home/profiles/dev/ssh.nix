{
  config,
  pkgs,
  lib,
  ...
}:
lib.mkMerge [
  {
    programs.ssh = {
      enable = true;
      forwardAgent = false;
      serverAliveInterval = 300;
      serverAliveCountMax = 2;

      includes = ["~/.config/ssh/config.local"];

      matchBlocks = {
        "*" = {
          addressFamily = "inet";
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
    home.persistence.${config.persistence.directory} = {
      directories = [
        ".ssh"
      ];
    };
  })
]
