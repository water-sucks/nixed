{ self, pkgs, ... }:

{
  age.secrets.varun-user-TheBeastNix.file = "${self}/secrets/varun-user-TheBeastNix.age";

  users.users.varun = {
    uid = 1000;
    passwordFile = "/run/agenix/varun-user-TheBeastNix";
    description = "Varun Narravula";
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  home-manager.users.varun = { suites, ... }: {
    imports = suites.base;
  };
}
