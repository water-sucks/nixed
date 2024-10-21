_: {
  services.kanshi = {
    enable = true;
    systemdTarget = "graphical-session.target";
  };

  systemd.user.services.kanshi = {
    Unit.ConditionPathExistsGlob = ["%t/wayland-*"];
  };
}
