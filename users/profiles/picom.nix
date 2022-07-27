{
  services.picom = {
    enable = true;
    backend = "glx";
    activeOpacity = 1.00;
    fade = true;
    fadeDelta = 16;
    fadeSteps = [0.07 0.07];
    fadeExclude = [
      "class_g = 'slop'"
    ];
    inactiveOpacity = 0.69;
    menuOpacity = 1.0;
    shadow = true;
    shadowExclude = [
      "class_g = 'slop'"
      "name = 'cpt_frame_window'"
      "class_g = 'rofi'"
      "class_g = 'Polybar'"
    ];
    shadowOpacity = 1.00;
    vSync = true;
    settings = {
      dbe = true;

      blur = {
        background = true;
        background-exclude = [
          "class_g = 'Pqiv'"
          "class_g = 'slop'"
          "_GTK_FRAME_EXTENTS@:c"
          "window_type = 'desktop'"
          "class_g = 'zoom'"
          "class_g = 'Polybar'"
        ];
        method = "dual_kawase";
        size = 11;
        strength = 8;
        deviation = false;
        background-frame = false;
        background-fixed = false;
      };

      corner-radius = 8.0;
      round-borders = 8.0;
      round-borders-exclude = [
        "class_g = 'Polybar'"
        "class_g = 'Dunst'"
      ];

      rounded-corners-exclude = [
        "class_g = 'Polybar'"
        "class_g = 'Dunst'"
      ];

      transition = {
        length = 300;
        pow-x = 0.1;
        transition-pow-y = 0.1;
        transition-pow-w = 0.1;
        transition-pow-h = 0.1;
      };
      size-transition = true;

      shadow = {
        radius = 33;
        offset-x = -33;
        offset-y = -33;
      };
      xinerama-shadow-crop = true;

      no-fading-openclose = false;
      no-fading-destroyed-argb = false;
      inactive-opacity-override = false;
    };
    experimentalBackends = true;
  };
}
