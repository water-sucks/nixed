{ config, self, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    google-authenticator
  ];

  security.pam.services = {
    gdm-password.text = lib.mkForce ''
      auth      substack      login
      auth      required      ${pkgs.google-authenticator}/lib/security/pam_google_authenticator.so no_increment_hotp nullok
      account   include       login
      password  substack      login
      session   include       login
    '';
    xscreensaver.text = ''
      auth    sufficient    pam_unix.so try_first_pass likeauth
    '';
    hikari-unlocker.text = ''
      auth    sufficient    pam_unix.so try_first_pass likeauth
    '';

    sshd.googleAuthenticator.enable = lib.mkForce true;
  };
}
