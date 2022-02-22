{ self, config, pkgs, ... }:

{
  services.sxhkd = {
    enable = true;
    keybindings =
      let
        kitty = "${pkgs.kitty}/bin/kitty";
        rofi = "${pkgs.rofi}/bin/rofi";
        berryc = "${pkgs.berry}/bin/berryc";
      in
      {
        "super + Return" = "${kitty}";
        "super + shift + Return" = "${rofi} -show drun";
        "super + shift + alt + Return" = "${rofi} -show run";
        "super + Escape" = "pkill -USR1 -x sxhkd";
        "super + {h, j, k, l}" = "${berryc} window_move {-50 0, 0 50, 0 -50, 50 0}";
        "super + shift + {h, j, k, l}" = "${berryc} window_resize {-50 0, 0 50, 0 -50, 50 0}";
        "super + {0-9}" = "${berryc} switch_workspace {0-9}";
        "super + shift + {0-9}" = "${berryc} send_to_workspace {0-9}";
        "super + m" = "${berryc} window_monocle";
        "super + f" = "${berryc} fullscreen";
        "super + p" = "${berryc} snap_right";
        "super + o" = "${berryc} snap_left";
        "super + n" = "${berryc} toggle_decorations";
        "super + Tab" = "${berryc} cycle_focus && ${berryc} window_raise";
        "super + q" = "${berryc} window_close";
        "super + c" = "${berryc} window_center";
        "~button1" = "${berryc} pointer_focus && ${berryc} window_raise";
        "super + ctrl + alt + q" = "${berryc} quit";
        "super + alt + {h, j, k, l}" = "${berryc} cardinal_focus {1, 2, 3, 4} && ${berryc} window_raise";
        "XF86AudioRaiseVolume" = "amixer sset Master 5+";
        "XF86AudioLowerVolume" = "amixer sset Master 5-";
        "XF86AudioMute" = "amixer sset Master toggle";
      };
  };
}
