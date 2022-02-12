{ self, config, pkgs, ... }:

{
  services.xserver.displayManager = {
    lightdm = {
      enable = true;
      greeters.gtk = {
        enable = true;
        theme = {
          name = "Orchis-dark";
          package = pkgs.orchis-theme;
        };
        indicators = [
          "~clock"
          "~spacer"
          "~host"
          "~spacer"
          "~session"
          "~power"
        ];
        clock-format = "%H:%M:%S";
        extraConfig = ''
          [greeter]
          background=${self}/profiles/wm-helper/ice.png
        '';
      };
    };
    sessionPackages = with pkgs; [
      hikari
    ];
    defaultSession = "hikari";
  };
}
