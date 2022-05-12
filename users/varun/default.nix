{ self, pkgs, ... }:

{
  users.users.varun = {
    uid = 1000;
    description = "Varun Narravula";
    shell = pkgs.zsh;
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "video" "input" "networkmanager" "libvirtd" "adbusers" "dialout" ];
  };

  home-manager.users.varun = { suites, profiles, ... }: {
    imports = with suites; base ++ dev ++ graphical ++ apps;

    programs.git = {
      userEmail = "varun@cvte.org";
      userName = "Varun Narravula";
    };
  };
}
