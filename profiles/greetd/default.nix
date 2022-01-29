{ config, pkgs, lib, ... }:

{
  services.greetd = {
    enable = false;
    settings = {
      default_session = {
        # command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd \"startx &> /dev/null\"";
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --sessions ${pkgs.berry}/share/applications";
        user = "greeter";
      };
    };
    vt = 7;
  };

  environment.systemPackages = with pkgs; [
    greetd.tuigreet
  ];
}
