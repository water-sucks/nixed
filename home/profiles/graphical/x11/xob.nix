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
    Unit.ConditionEnvironment = "!WAYLAND_DISPLAY";
  };

  systemd.user.sockets.xob = {
    Unit.ConditionEnvironment = "!WAYLAND_DISPLAY";
  };
}
