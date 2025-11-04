_: {
  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      PasswordAuthentication = false;
      PubkeyAuthentication = "yes";
      PermitRootLogin = "no";
      AllowTcpForwarding = "no";
      X11Forwarding = false;
      PermitTunnel = "no";
      ClientAliveInterval = 120;
      ClientAliveCountMax = 2;
    };
  };

  programs.ssh.enableAskPassword = false;

  security.sudo.extraConfig = ''
    Defaults env_keep += "SSH_AUTH_SOCK"
  '';
}
