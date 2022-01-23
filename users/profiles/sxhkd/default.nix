{ self, config, pkgs, ... }:

{
  services.sxhkd = {
    enable = true;
    extraConfig = builtins.readFile ./sxhkdrc;
  };
}
