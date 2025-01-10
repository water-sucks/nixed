{pkgs, ...}: {
  programs.autorandr = {
    enable = true;
  };

  systemd.user.services.autorandr = {
    Unit = {
      Description = "autorandr dynamic output configuration";
      PartOf = ["graphical-session.target"];
      Requires = ["graphical-session.target"];
      After = ["graphical-session.target"];
      ConditionPathExistsGlob = ["!%t/wayland-*"];
    };

    Service = {
      Type = "oneshot";
      ExecStart = "${pkgs.autorandr}/bin/autorandr --change";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = ["graphical-session.target"];
    };
  };
}
