{pkgs, ...}: let
  launcher = pkgs.writeShellScript "river-launcher.sh" ''
    . "/etc/profiles/per-user/$USER/etc/profile.d/hm-session-vars.sh"
    systemctl --user start graphical-session.target
    systemd-cat --identifier=river river
  '';
in {
  services.greetd = {
    enable = true;
    vt = 7;
    settings = {
      default_session = {
        # command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --sessions ${config.services.xserver.displayManager.sessionData.desktops}";
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd ${launcher}";
      };
    };
  };

  services.xserver.displayManager.lightdm.enable = false;
}
