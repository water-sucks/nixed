{ self, config, pkgs, ... }:

{
  xsession.enable = true;

  xsession.windowManager.berry = {
    enable = true;
    autostart = ''
      #!/usr/bin/env bash

      berryc=${pkgs.berry}/bin/berryc

      ${pkgs.feh}/bin/feh --bg-scale $HOME/.config/wallpapers/PurpleRedStuff.png
      ${pkgs.polybar}/bin/polybar-msg cmd restart # Reload bar for EWMH detection

      berryc decorate_new false
      berryc title_height 0 # Disabling the weird title bar
      berryc focus_color 5d5d5d
      berryc unfocus_color 4b0b46

      # No borders by default
      berryc border_width 0
      berryc inner_border_width 0

      berryc top_gap 25
    '';
  };
}
