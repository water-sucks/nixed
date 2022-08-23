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
        theme = {
          name = "Orchis-dark";
          package = pkgs.orchis-theme;
        };
        iconTheme = {
          name = "Orchis-dark";
          package = pkgs.orchis-theme;
        };
        extraConfig = ''
          show-a11y=false
          clock-format=%H:%M:%S
        '';
      };
    };
  };
}
