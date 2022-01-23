{ self, config, pkgs, ... }:

{
  services.polybar = {
    enable = true;
    script = ''
      polybar oofbar &
    '';
    extraConfig = builtins.readFile ./config;
  };
}
