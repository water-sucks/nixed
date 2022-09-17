{pkgs, ...}: {
  imports = [
    ./colors.nix
    ./modules.nix
    ./config.nix
  ];

  home.packages = with pkgs; [
    xdotool
  ];

  services.polybar = {
    enable = true;
    package = pkgs.polybar.override {
      pulseSupport = true;
    };
    script = ''
      polybar oofbar &
    '';
  };

  systemd.user.services.polybar = {
    Unit.ConditionPathExistsGlob = ["!%t/wayland-*"];
  };
}
