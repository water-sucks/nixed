{
  pkgs,
  lib,
  ...
}: {
  users.users.varun =
    {
      uid = 1000;
      description = "Varun Narravula";
      shell = pkgs.zsh;
    }
    // (lib.optionalAttrs pkgs.stdenv.isLinux {
      extraGroups = ["wheel" "audio" "video" "input" "networkmanager" "libvirtd" "adbusers" "dialout"];
      isNormalUser = true;
    });

  home-manager.users.varun = {suites, ...}: {
    imports = with suites;
      if pkgs.stdenv.isLinux
      then base ++ dev ++ graphical ++ apps
      else base ++ dev ++ apps;

    programs.git = {
      userEmail = "varun@cvte.org";
      userName = "Varun Narravula";
    };
  };
}
