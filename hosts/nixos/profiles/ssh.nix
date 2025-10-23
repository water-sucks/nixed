_: {
  services.openssh = {
    enable = true;
    openFirewall = true;
  };

  programs.ssh.enableAskPassword = false;

  security.sudo.extraConfig = ''
    Defaults env_keep += "SSH_AUTH_SOCK"
  '';
}
