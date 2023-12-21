{
  homebrew.casks = [
    "native-access"
  ];

  users.users.varun.home = "/Users/varun";
  users.users.varun.isHidden = false;

  security.pam.enableSudoTouchIdAuth = true;

  networking.hostName = "TimBrown";

  home-manager.sharedModules = [
    {
      services.darwin-wallpaper.file = ../../../../assets/city.jpg;
    }
  ];

  system.stateVersion = 4;
}
