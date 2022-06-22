{ config, self, pkgs, ... }:

{
  home.packages = with pkgs; [
    xss-lock
    xscreensaver
    xsecurelock
  ];

  services.screen-locker = {
    enable = true;
    lockCmd = "/usr/bin/env XSECURELOCK_SAVER=saver_blank XSECURELOCK_COMPOSITE_OBSCURER=0 XSECURELOCK_PAM_SERVICE=xscreensaver XSECURELOCK_PASSWORD_PROMPT=asterisks ${pkgs.xsecurelock}/bin/xsecurelock";
    inactiveInterval = 5;
    xss-lock.package = pkgs.xss-lock;
    xss-lock.extraOptions = [
      "-n ${pkgs.xsecurelock}/libexec/xsecurelock/dimmer"
      "-l"
    ];
  };
}
