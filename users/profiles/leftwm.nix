{
  self,
  pkgs,
  lib,
  ...
}: let
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

  leftwm-command = "${pkgs.leftwm}/bin/leftwm-command";
  feh = "${pkgs.feh}/bin/feh";
  kitty = "${pkgs.kitty}/bin/kitty";
  rofi = "${pkgs.rofi}/bin/rofi";
  xset = "${pkgs.xorg.xset}/bin/xset";
  maim = "${pkgs.maim}/bin/maim";
  dunstify = "${pkgs.dunst}/bin/dunstify";
  amixer = "${pkgs.alsa-utils}/bin/amixer";
  light = "${pkgs.light}/bin/light";

  switchTag = tag: transform: (bind [mod] (toString (transform tag)) "GotoTag" (toString tag));
  moveTag = tag: transform: (bind [mod shift] (toString (transform tag)) "MoveToTag" (toString tag));

  powerMenu = import ./power-menu.nix pkgs;
  screenshot = pkgs.writeShellScript "take-screenshot.sh" ''
    if [ "$1" == "-s" ]; then
      cmd="${maim} -s"
    else
      cmd="${maim}"
    fi

    if eval "$cmd $HOME/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png"; then
      ${dunstify} -u low "Screenshot taken" "at $(date +%r)"
    fi
  '';
in {
  home.packages = [
    pkgs.slop
    pkgs.maim
  ];

  xsession = {
    enable = true;
    initExtra = ''
      # Causes problems for xss-lock and other services that
      # use this to test for Wayland.
      systemctl --user unset-environment WAYLAND_DISPLAY
      ${xset} s 300 50
    '';
  };

  xsession.windowManager.leftwm = {
    enable = true;

    settings = {
      modkey = "Mod4";
      mousekey = "Mod4";
      workspaces = [];
      tags = ["1" "2" "3" "4" "5" "6" "7" "8" "9"];
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
      disable_current_tag_swap = false;
      focus_behaviour = "Sloppy"; # Bri*ish
      focus_new_windows = true;

      keybind = lib.lists.flatten [
        # General
        (bind [mod] "q" "CloseWindow" "")
        (bind [mod shift] "r" "SoftReload" "")
        (bind [mod ctrl alt] "r" "HardReload" "")
        (bind [mod shift] "f" "ToggleFloating" "")
        (bind [mod] "f" "ToggleFullScreen" "")

        # Tags
        (bind [mod] "w" "SwapTags" "")
        (bind [mod] "z" "RotateTag" "")
        (map (t: (switchTag t (x: x))) (lib.range 1 9))
        (map (t: (switchTag t (x: "KP_${toString x}"))) (lib.range 1 9))
        (map (t: (moveTag t (x: x))) (lib.range 1 9))
        (map (t: (moveTag t (x: "KP_${toString x}"))) (lib.range 1 9))

        # Scratchpads
        (bind [ctrl alt] "t" "ToggleScratchPad" "Terminal")

        # Layouts
        (bind [mod ctrl] "k" "NextLayout" "")
        (bind [mod ctrl] "Up" "NextLayout" "")
        (bind [mod ctrl] "j" "PreviousLayout" "")
        (bind [mod ctrl] "Down" "PreviousLayout" "")
        (bind [mod ctrl] "m" "SetLayout" "Monocle")
        (bind [mod ctrl] "f" "SetLayout" "Fibonacci")

        # Workspace
        (bind [mod shift] "l" "FocusWorkspaceNext" "")
        (bind [mod shift] "Right" "FocusWorkspaceNext" "")
        (bind [mod shift] "h" "FocusWorkspacePrevious" "")
        (bind [mod shift] "Left" "FocusWorkspacePrevious" "")
        (bind [mod shift] "w" "MoveToLastWorkspace" "")

        # Window
        (bind [mod] "k" "FocusWindowUp" "")
        (bind [mod] "Up" "FocusWindowUp" "")
        (bind [mod] "j" "FocusWindowDown" "")
        (bind [mod] "Down" "FocusWindowDown" "")
        (bind [mod] "t" "FocusWindowTop" "")
        (bind [mod shift] "k" "MoveWindowUp" "")
        (bind [mod shift] "Up" "MoveWindowUp" "")
        (bind [mod shift] "j" "MoveWindowDown" "")
        (bind [mod shift] "Down" "MoveWindowDown" "")
        (bind [mod shift] "t" "MoveWindowTop" "")

        # External
        (execute [mod] return kitty)
        (execute [mod] "space" "${rofi} -show drun")
        (execute [mod shift] "Return" ''${rofi} -show combi -combi-modi "drun,window,run,ssh" -modi combi'')
        (execute [mod] "l" "${xset} s activate")
        (execute [mod ctrl alt] "q" "loginctl kill-session $XDG_SESSION_ID")
        # (execute [ mod ] "Print" "${maim} -s ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png && ${dunstify} 'Screenshot taken.'")
        (execute [mod] "Print" "${screenshot} -s")
        # (execute [ ] "Print" "${maim} ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png && ${dunstify} 'Screenshot taken.'")
        (execute [] "Print" "${screenshot}")
        (execute [] "XF86XK_AudioRaiseVolume" "${amixer} sset Master 5%+")
        (execute [] "XF86XK_AudioLowerVolume" "${amixer} sset Master 5%-")
        (execute [] "XF86XK_AudioMute" "${amixer} sset Master toggle")
        (execute [] "XF86XK_AudioMicMute" "${amixer} sset Capture toggle")
        (execute [] "XF86XK_MonBrightnessUp" "${light} -A 5")
        (execute [] "XF86XK_MonBrightnessDown" "${light} -U 5")
        (execute [] "XF86XK_Calculator" "rofi -modi calc -show calc")
        (execute [ctrl alt] "Delete" "${powerMenu}")
      ];

      scratchpad = [
        {
          name = "Terminal";
          value = "${pkgs.kitty}/bin/kitty";
          x = 0.25;
          y = 0.25;
          height = 0.5;
          width = 0.5;
        }
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

      ${leftwm-command} "LoadTheme $SCRIPTPATH/theme.toml"

      if [ -x "$(command -v feh)" ]; then
        ${feh} --bg-scale ${self}/assets/woah.jpg
      fi
      # systemctl --user restart polybar # Won't show unless restarted
    '';

    down = ''
      #!/usr/bin/env bash

      export SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

      ${leftwm-command} "UnloadTheme"
    '';
  };
}
