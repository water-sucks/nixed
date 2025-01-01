{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    libimobiledevice
    ifuse
  ];

  services.usbmuxd = {
    enable = true;
    package = pkgs.usbmuxd2.overrideAttrs (o: {
      postPatch =
        o.postPatch
        + ''
          # Otherwise, it will complain about no matching function for call to 'find'
          sed -i 1i'#include <algorithm>' usbmuxd2/Muxer.cpp
        '';
    });
  };
}
