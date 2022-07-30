{
  self,
  pkgs,
  ...
}: {
  services.xserver = {
    displayManager.lightdm = {
      enable = true;
      background = "${self}/assets/cool.jpg";

      greeters.slick = {
        enable = true;
        showHostname = true;
        showPower = true;
        showAccessibility = false;
        showKeyboard = true;
        showClock = true;
        showQuit = true;
        theme = {
          name = "Orchis-dark";
          package = pkgs.orchis-theme;
        };
        iconTheme = {
          name = "Orchis-dark";
          package = pkgs.orchis-theme;
        };
        clockFormat = "%H:%M:%S";
      };
    };
  };
}
