{ self, config, ... }:

{
  services.openssh = {
    enable = true;
    openFirewall = true;
  };

  programs.ssh.enableAskPassword = false;
}
