{ config, pkgs, lib, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd \"startx &> /dev/null\"";
        user = "greeter";
      };
    };
    vt = 7;
  };

  environment.systemPackages = with pkgs; [
    greetd.tuigreet
  ];
}
