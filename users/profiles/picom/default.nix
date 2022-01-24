{ self, config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "xrender";
    activeOpacity = "0.88";
    blur = true;
    extraOptions = ''
      corner-radius = 10;
      blur-method = "dual_kawase";
      blur-strength= "8";
      xinerama-shadow-crop = true;
    '';
    experimentalBackends = true;
    shadowExclude = [
      "bounding_shaped && !rounded_corners"
    ];
    fade = true;
    fadeDelta = 5;
    vSync = true;
  };
}
