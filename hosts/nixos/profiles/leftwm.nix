{pkgs, ...}: let
  inherit (pkgs) leftwm;
in {
  services.xserver.displayManager.session = [
    # Making our own xinit wrapper for LeftWM so that
    # it doesn't have the annoying none+ in front.
    {
      name = "LeftWM";
      manage = "desktop";
      start = ''
        ${leftwm}/bin/leftwm &
        waitPID=$!
      '';
    }
  ];

  environment.systemPackages = [
    leftwm
  ];
}
