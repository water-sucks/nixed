{ config, self, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    google-authenticator
  ];

  security.pam.services = {
    xscreensaver.text = ''
      auth    sufficient    pam_unix.so try_first_pass likeauth
    '';

    sshd.googleAuthenticator.enable = lib.mkForce true;
  };
}
