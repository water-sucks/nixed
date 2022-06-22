{ self, config, pkgs, lib, ... }:

{
  users.users.varun.home = "/Users/varun";
  users.users.varun.isHidden = false;

  networking.hostName = "SebastianJanikowski";

  system.stateVersion = 4;
}
