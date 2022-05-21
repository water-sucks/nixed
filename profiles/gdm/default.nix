{ self, config, pkgs, ... }:

{
  services.xserver.displayManager = {
    gdm = {
      enable = true;
      settings = {
        daemon = {
          FirstVT = 7;
        };
      };
    };
  };
}
