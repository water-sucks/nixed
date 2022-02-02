{ self, config, pkgs, ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    activeOpacity = "1.00";
    blur = true;
    blurExclude = [
      "class_g = 'Pqiv'"
      "class_g = 'slop'"
      "_GTK_FRAME_EXTENTS@:c"
      "window_type = 'desktop'"
      "class_g = 'zoom'"
    ];
    fade = true;
    fadeDelta = 16;
    fadeSteps = [ "0.07" "0.07" ];
    fadeExclude = [
      "class_g = 'slop'"
    ];
    inactiveOpacity = "0.77";
    menuOpacity = "1.0";
    shadow = true;
    shadowExclude = [
      "class_g = 'slop'"
      "name = 'cpt_frame_window'"
      "class_g = 'rofi'"
    ];
    shadowOpacity = "1.00";
    vSync = true;
    extraOptions = ''
      dbe = true;

      corner-radius = 11.0;
      round-borders = 11.0;
      round-borders-exclude = [
        "class_g = 'rofi'",
      ];

      transition-length = 300;
      transition-pow-x = 0.1;
      transition-pow-y = 0.1;
      transition-pow-w = 0.1;
      transition-pow-h = 0.1;
      size-transition = true;

      shadow-radius = 32;
      shadow-offset-x = -32;
      shadow-offset-y = -32;
      xinerama-shadow-crop = true;

      no-fading-openclose = false;
      no-fading-destroyed-argb = false;
      inactive-opacity-override = false;

      blur-size = 12;
      blur-strength = 11;
      blur-background = true;
      blur-method = "dual_kawase";
      blur-deviation = false;
      blur-background-frame = false;
      blur-background-fixed = false;

      use-damage = true;
      resize-damage = 1;
    '';
    experimentalBackends = false;
  };
}
