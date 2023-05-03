_: {
  programs.xob = {
    enable = true;
    style = "default";
    styles = {
      default = {
        x = {
          relative = 0;
          offset = 40;
        };
        y = {
          relative = 0;
          offset = 40;
        };
        length = {
          relative = 0.13;
          offset = 0;
        };
        thickness = 20;
        orientation = "horizontal";
      };
    };
  };

  systemd.user.services.xob = {
    Unit.ConditionPathExistsGlob = ["!%t/wayland-*"];
  };

  systemd.user.sockets.xob = {
    Socket.ConditionPathExistsGlob = ["!%t/wayland-*"];
  };
}
