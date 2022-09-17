{
  xdg.mimeApps.enable = true;

  systemd.user.services.xdg-desktop-portal-wlr = {
    Unit.ConditionPathExistsGlob = ["%t/wayland-*"];
  };
}
