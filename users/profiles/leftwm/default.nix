{ self, config, pkgs, lib, ... }:

let
  bind = modifier: key: command: value: {
    inherit command key modifier value;
  };

  execute = modifier: key: value: (bind modifier key "Execute" value);

  # Bindings for common controls
  mod = "modkey";
  shift = "Shift";
  ctrl = "Control";
  alt = "Alt";
  return = "Return";

  leftwm = "${pkgs.leftwm}/bin/leftwm";
  feh = "${pkgs.feh}/bin/feh";
  pkill = "${pkgs.procps}/bin/pkill";
  kitty = "${pkgs.kitty}/bin/kitty";
  rofi = "${pkgs.rofi}/bin/rofi";
  xset = "${pkgs.xorg.xset}/bin/xset";
  maim = "${pkgs.maim}/bin/maim";
  amixer = "${pkgs.alsa-utils}/bin/amixer";

  switchTag = tag: transform: (bind [ mod ] (toString (transform tag)) "GotoTag" (toString tag));
  moveTag = tag: transform: (bind [ mod shift ] (toString (transform tag)) "MoveToTag" (toString tag));
in
{
  home.packages = [
    pkgs.slop
    pkgs.maim
  ];

  xsession.enable = true;

  xsession.windowManager.leftwm = {
    enable = true;

    settings = {
      modkey = "Mod4";
      mousekey = "Mod4";
      workspaces = [ ];
      tags = [ "1" "2" "3" "4" "5" "6" "7" "8" "9" ];
      layouts = [
        "Fibonacci"
        "MainAndVertStack"
        "MainAndHorizontalStack"
        "MainAndDeck"
        "GridHorizontal"
        "EvenHorizontal"
        "EvenVertical"
        "CenterMain"
        "CenterMainBalanced"
        "Monocle"
        "RightWiderLeftStack"
        "LeftWiderRightStack"
      ];
      layout_mode = "Workspace";
      scratchpad = [ ];
      disable_current_tag_swap = false;
      focus_behaviour = "Sloppy"; # Bri*ish
      focus_new_windows = true;

      keybind = lib.lists.flatten [
        # General
        (bind [ mod ] "q" "CloseWindow" "")
        (bind [ mod shift ] "r" "SoftReload" "")
        (bind [ mod ctrl alt ] "r" "HardReload" "")
        (bind [ mod shift ] "f" "ToggleFloating" "")
        (bind [ mod ] "f" "ToggleFullScreen" "")

        # Tags
        (bind [ mod ] "w" "SwapTags" "")
        (bind [ mod ] "z" "RotateTag" "")
        (map (t: (switchTag t (x: x))) (lib.range 1 9))
        (map (t: (switchTag t (x: "KP_${toString x}"))) (lib.range 1 9))
        (map (t: (moveTag t (x: x))) (lib.range 1 9))
        (map (t: (moveTag t (x: "KP_${toString x}"))) (lib.range 1 9))

        # Scratchpad
        # Kitty scratchpad

        # Layout
        (bind [ mod ctrl ] "k" "NextLayout" "")
        (bind [ mod ctrl ] "Up" "NextLayout" "")
        (bind [ mod ctrl ] "j" "PreviousLayout" "")
        (bind [ mod ctrl ] "Down" "PreviousLayout" "")
        # SetLayout to Monocle
        # SetLayout to Fibonacci


        # Workspace
        (bind [ mod ] "l" "FocusWorkspaceNext" "")
        (bind [ mod ] "Right" "FocusWorkspaceNext" "")
        (bind [ mod ] "h" "FocusWorkspacePrevious" "")
        (bind [ mod ] "Left" "FocusWorkspacePrevious" "")
        (bind [ mod shift ] "w" "MoveToLastWorkspace" "")

        # Window
        (bind [ mod ] "k" "FocusWindowUp" "")
        (bind [ mod ] "Up" "FocusWindowUp" "")
        (bind [ mod ] "j" "FocusWindowDown" "")
        (bind [ mod ] "Down" "FocusWindowDown" "")
        # (bind [ mod ] "t" "FocusWindowTop" false) # Wait for updated LeftWM to get this feature?
        (bind [ mod shift ] "k" "MoveWindowUp" "")
        (bind [ mod shift ] "Up" "MoveWindowUp" "")
        (bind [ mod shift ] "j" "MoveWindowDown" "")
        (bind [ mod shift ] "Down" "MoveWindowDown" "")
        (bind [ mod shift ] "t" "MoveWindowTop" "")

        # External
        (execute [ mod ] return kitty)
        (execute [ mod ] "space" "${rofi} -show drun")
        (execute [ mod shift ] "BackSpace" "${xset} s activate")
        (execute [ mod ctrl alt ] "q" "loginctl kill-session $XDG_SESSION_ID")
        (execute [ mod ] "Print" "${maim} -s ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png")
        (execute [ ] "Print" "${maim} ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png")
        (execute [ ] "XF86XK_AudioRaiseVolume" "${amixer} sset Master 5%+")
        (execute [ ] "XF86XK_AudioLowerVolume" "${amixer} sset Master 5%-")
        (execute [ ] "XF86XK_AudioMute" "${amixer} sset Master toggle")
      ];
    };

    theme = {
      border_width = 1;
      margin = 10;
      default_border_color = "#333333";
      floating_border_color = "#333333";
      focused_border_color = "#732735";
    };

    up = ''
      #!/usr/bin/env bash

      export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

      if [ -f "/tmp/leftwm-theme-down" ]; then
          /tmp/leftwm-theme-down
          rm /tmp/leftwm-theme-down
      fi
      ln -s $SCRIPTPATH/down /tmp/leftwm-theme-down

      # ${leftwm} command "LoadTheme" "$SCRIPTPATH/theme.toml"
      echo "LoadTheme $SCRIPTPATH/theme.toml" > $XDG_RUNTIME_DIR/leftwm/commands.pipe

      if [ -x "$(command -v feh)" ]; then
        ${feh} --bg-scale ${./woah.jpg}
      fi
      systemctl --user restart polybar # Won't show unless restarted
    '';

    down = ''
      #!/usr/bin/env bash

      export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

      # ${leftwm} command "UnloadTheme"
      echo "UnloadTheme" > $XDG_RUNTIME_DIR/leftwm/commands.pipe

      ${pkill} feh
    '';
  };
}
