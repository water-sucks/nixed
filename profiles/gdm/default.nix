{ self, config, pkgs, ... }:

{
  services.xserver.displayManager = {
    gdm = {
      enable = true;
      wayland = true;
      debug = true;
    };
    sessionPackages = with pkgs; [
      hikari
    ];
    defaultSession = "hikari";
  };
}
