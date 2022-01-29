{ self, config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    activeOpacity = "1";
    blur = true;
    blurExclude = [
      "class_g = 'Pqiv'"
      "class_g = 'slop'"
      "_GTK_FRAME_EXTENTS@:c"
      "window_type = 'desktop'"
      "class_g = 'zoom'"
    ];
    fade = true;
    fadeDelta = 10;
    fadeSteps = [ "0.06" "0.06" ];
    fadeExclude = [
      "class_g = 'slop'"
    ];
    inactiveOpacity = "1.0";
    menuOpacity = "1.0";
    shadow = true;
    shadowExclude = [
      "class_g = 'slop'"
      "name = 'cpt_frame_window'"
    ];
    shadowOpacity = "1.0";
    vSync = true;
    extraOptions = ''
      corner-radius = 12.0;
      round-borders = 12.0;
      round-borders-exclude = [];

      transition-length = 300;
      transition-pow-x = 0.1;
      transition-pow-y = 0.1;
      transition-pow-w = 0.1;
      transition-pow-h = 0.1;
      size-transition = true;

      xinerama-shadow-crop = true;

      no-fading-openclose = false;
      no-fading-destroyed-argb = false;
      inactive-opacity-override = false;

      blur-size = 12;
      blur-deviation = false;
      blur-background-frame = false;
      blur-background-fixed = false;

      use-damage = true;
      resize-damage = 1;
    '';
    experimentalBackends = true;
  };
}
