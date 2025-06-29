_: {
  services.kanshi = {
    enable = true;
    systemdTarget = "graphical-session.target";
  };
}
