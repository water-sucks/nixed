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
      "class_g = 'Polybar'"
    ];
    fade = true;
    fadeDelta = 16;
    fadeSteps = [ "0.07" "0.07" ];
    fadeExclude = [
      "class_g = 'slop'"
    ];
    inactiveOpacity = "0.69";
    menuOpacity = "1.0";
    shadow = true;
    shadowExclude = [
      "class_g = 'slop'"
      "name = 'cpt_frame_window'"
      "class_g = 'rofi'"
      "class_g = 'Polybar'"
    ];
    shadowOpacity = "1.00";
    vSync = true;
    extraOptions = ''
      dbe = true;

      corner-radius = 8.0;
      round-borders = 8.0;
      round-borders-exclude = [
        "class_g = 'Polybar'",
        "class_g = 'Dunst'",
      ];

      rounded-corners-exclude = [
        "class_g = 'Polybar'",
        "class_g = 'Dunst'",
      ];

      transition-length = 300;
      transition-pow-x = 0.1;
      transition-pow-y = 0.1;
      transition-pow-w = 0.1;
      transition-pow-h = 0.1;
      size-transition = true;

      shadow-radius = 33;
      shadow-offset-x = -33;
      shadow-offset-y = -33;
      xinerama-shadow-crop = true;

      no-fading-openclose = false;
      no-fading-destroyed-argb = false;
      inactive-opacity-override = false;

      blur-size = 11;
      blur-strength = 8;
      blur-background = true;
      blur-method = "dual_kawase";
      blur-deviation = false;
      blur-background-frame = false;
      blur-background-fixed = false;
    '';
    experimentalBackends = true;
  };
}
