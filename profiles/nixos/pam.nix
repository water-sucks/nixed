{ config, self, pkgs, lib, ... }:

{
  security.pam.services = {
    xscreensaver.text = ''
      auth    sufficient    pam_unix.so try_first_pass likeauth
    '';
  };
}
