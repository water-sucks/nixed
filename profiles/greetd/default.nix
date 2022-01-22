{ config, pkgs, lib, ... }:

{
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd hikari";
        user = "greeter";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    greetd.tuigreet
  ];
}
