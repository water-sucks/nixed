{
  self,
  config,
  ...
}: {
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
          PasswordAuthentication = "no";
          StrictHostKeyChecking = "ask";
          VerifyHostKeyDNS = "yes";
          VisualHostKey = "yes";
        };
      };
    };
  };
}
