{ config, pkgs, ... }:

{
  hardware.opengl = {
    enable = true;
    driSupport = true;
  };
}
