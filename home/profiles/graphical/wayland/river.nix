{
  config,
  pkgs,
  lib,
  ...
}: let
  rivertile = "${pkgs.river}/bin/rivertile";

  c = config.colorscheme.palette;

  # How is this not in the standard lib?
  pow = n: i:
    if i == 1
    then n
    else if i == 0
    then 1
    else n * pow n (i - 1);

  mod = "Super";
  shift = "Shift";
  ctrl = "Control";
  alt = "Alt";
  return = "Return";

  sed = "${pkgs.gnused}/bin/sed";
  kitty = "${pkgs.kitty}/bin/kitty";
  amixer = "${pkgs.alsa-utils}/bin/amixer";
  playerctl = "${pkgs.playerctl}/bin/playerctl";
  light = "${pkgs.light}/bin/light";
  slurp = "${pkgs.slurp}/bin/slurp";
  grim = "${pkgs.grim}/bin/grim";
  dunstify = "${pkgs.dunst}/bin/dunstify";
  rofi = "${pkgs.rofi-wayland}/bin/rofi";
  swayidle = "${pkgs.swayidle}/bin/swayidle";
  waylockWrapper =
    pkgs.writeShellScriptBin "waylock"
    "${pkgs.waylock}/bin/waylock -init-color 0x${c.bg-bright} -input-color 0x${c.dark-pink} -fail-color 0x${c.dark-red} $@";
  waylockCommand = "${waylockWrapper}/bin/waylock";
  wobSocket = "$XDG_RUNTIME_DIR/wob.sock";

  screenshot = pkgs.writeShellScript "take-screenshot.sh" ''
    if [ "$1" == "-s" ]; then
      cmd="${grim} -g '$(${slurp})'"
    else
      cmd="${grim}"
    fi

    if eval "$cmd $HOME/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png"; then
      ${dunstify} -u low "Screenshot taken" "at $(date +%r)"
    fi
  '';
in {
  home.packages = with pkgs; [
    waylockWrapper
    wl-clipboard
    wlr-randr
  ];

  wayland.windowManager.river = let
    bind = modkeys: key: command: {
      name = "${
        if builtins.length modkeys != 0
        then lib.concatStringsSep "+" modkeys
        else "None"
      } ${key}";
      value = command;
    };
    exec = modkeys: key: command: bind modkeys key ''spawn "${command}"'';
  in {
    enable = true;
    package = null;
    settings = {
      background-color = "0x${c.bg-bright}";
      border-color-focused = "0x${c.magenta}";
      border-color-unfocused = "0x00000000"; # Remove border color for unfocused windows
      border-width = 2;
      default-layout = "rivertile";
      rule-add = {
        "-app-id" = {
          "Rofi" = "float";
          "librewolf" = "ssd";
        };
      };
      set-repeat = "50 250";
      map = {
        normal = builtins.listToAttrs (lib.lists.flatten [
          # General
          (bind [mod] "q" "close")
          (bind [mod ctrl alt] "q" "exit")
          (bind [mod shift] "f" "toggle-float")
          (bind [mod] "f" "toggle-fullscreen")

          # Views
          (bind [mod alt] "h" "move left 100")
          (bind [mod alt] "j" "move down 100")
          (bind [mod alt] "k" "move up 100")
          (bind [mod alt] "l" "move right 100")
          (bind [mod alt ctrl] "h" "snap left")
          (bind [mod alt ctrl] "j" "snap down")
          (bind [mod alt ctrl] "k" "snap up")
          (bind [mod alt ctrl] "l" "snap right")
          (bind [mod alt shift] "h" "resize horizontal -100")
          (bind [mod alt shift] "j" "resize vertical 100")
          (bind [mod alt shift] "k" "resize vertical -100")
          (bind [mod alt shift] "l" "resize horizontal 100")
          (bind [mod] "j" "focus-view next")
          (bind [mod] "k" "focus-view previous")
          (bind [mod shift] "j" "swap next")
          (bind [mod shift] "k" "swap previous")
          (bind [mod] "t" "zoom")

          # Tags
          (let
            i' = i: toString (pow 2 (i - 1));
            range = lib.range 1 9;
          in [
            (map (i: (bind [mod] "${toString i}" "set-focused-tags ${i' i}")) range)
            (map (i: (bind [mod shift] "${toString i}" "set-view-tags ${i' i}")) range)
            (map (i: (bind [mod ctrl] "${toString i}" "toggle-focused-tags ${i' i}")) range)
            (map (i: (bind [mod shift ctrl] "${toString i}" "set-view-tags ${i' i}")) range)
          ])
          (let
            allTags = toString (pow 2 32);
          in [
            (bind [mod] "0" "set-focused-tags ${allTags}")
            (bind [mod shift] "0" "set-view-tags ${allTags}")
          ])
          (bind [mod] "w" "focus-previous-tags")
          (bind [mod shift] "w" "send-to-previous-tags")

          # Outputs
          (bind [mod] "Period" "focus-output next")
          (bind [mod] "Comma" "focus-output previous")
          (bind [mod shift] "Period" "send-to-output next")
          (bind [mod shift] "Comma" "send-to-output previous")

          # Tiling (with rivertile layout)
          (let
            rivertile = command: ''send-layout-cmd rivertile "${command}"'';
          in [
            (bind [mod shift] "h" (rivertile "main-ratio -0.05"))
            (bind [mod shift] "l" (rivertile "main-ratio +0.05"))
            (bind [mod ctrl] "h" (rivertile "main-count +1"))
            (bind [mod ctrl] "l" (rivertile "main-count -1"))
            (bind [mod] "Up" (rivertile "main-location top"))
            (bind [mod] "Right" (rivertile "main-location right"))
            (bind [mod] "Down" (rivertile "main-location bottom"))
            (bind [mod] "Left" (rivertile "main-location left"))
          ])

          # Commands
          (exec [mod] return "${kitty}")
          (exec [mod] "space" "${rofi} -show drun")
          (exec [mod shift] return "${rofi} -show combi -combi-modi 'drun,window,run,ssh' -modi combi")
          (exec [] "Print" "${screenshot}")
          (exec [mod] "Print" "${screenshot} -s")
          (exec [ctrl alt] "Delete" "rofi-power-menu-wayland")
          (exec [mod] "l" "${waylockCommand}")

          (exec [] "XF86AudioRaiseVolume" ''${amixer} sset Master 5%+ | ${sed} -En 's/.*\[([0-9]+)%\].*/\1/p' | head -1 > ${wobSocket}'')
          (exec [] "XF86AudioLowerVolume" ''${amixer} sset Master 5%- | ${sed} -En 's/.*\[([0-9]+)%\].*/\1/p' | head -1 > ${wobSocket}'')
          (exec [] "XF86AudioMute" ''${amixer} sset Master toggle | ${sed} -En '/\[on\]/ s/.*\[([0-9]+)%\].*/\1/ p; /\[off\]/ s/.*/0/p' | head -1 > ${wobSocket}'')
          (exec [] "XF86AudioMicMute" "${amixer} sset Capture toggle")
          (exec [] "XF86AudioMedia" "${playerctl} play-pause")
          (exec [] "XF86AudioPlay" "${playerctl} play-pause")
          (exec [] "XF86AudioPrev" "${playerctl} previous")
          (exec [] "XF86AudioNext" "${playerctl} next")
          (exec [] "XF86MonBrightnessUp" "${light} -A 5 && ${light} -G | cut -d'.' -f1 > ${wobSocket}")
          (exec [] "XF86MonBrightnessDown" "${light} -U 5 && ${light} -G | cut -d'.' -f1 > ${wobSocket}")
          (exec [] "XF86Calculator" "${rofi} -modi calc -show calc")
        ]);
        locked = builtins.listToAttrs [
          (exec [] "XF86AudioRaiseVolume" ''${amixer} sset Master 5%+ | ${sed} -En 's/.*\[([0-9]+)%\].*/\1/p' | head -1 > ${wobSocket}'')
          (exec [] "XF86AudioLowerVolume" ''${amixer} sset Master 5%- | ${sed} -En 's/.*\[([0-9]+)%\].*/\1/p' | head -1 > ${wobSocket}'')
          (exec [] "XF86AudioMute" ''${amixer} sset Master toggle | ${sed} -En '/\[on\]/ s/.*\[([0-9]+)%\].*/\1/ p; /\[off\]/ s/.*/0/p' | head -1 > ${wobSocket}'')
          (exec [] "XF86AudioMicMute" "${amixer} sset Capture toggle")
          (exec [] "XF86AudioMedia" "${playerctl} play-pause")
          (exec [] "XF86AudioPlay" "${playerctl} play-pause")
          (exec [] "XF86AudioPrev" "${playerctl} previous")
          (exec [] "XF86AudioNext" "${playerctl} next")
          (exec [] "XF86MonBrightnessUp" "${light} -A 5 && ${light} -G | cut -d'.' -f1 > ${wobSocket}")
          (exec [] "XF86MonBrightnessDown" "${light} -U 5 && ${light} -G | cut -d'.' -f1 > ${wobSocket}")
          (exec [] "XF86Calculator" "${rofi} -modi calc -show calc")
        ];
      };
      map-pointer = {
        normal = builtins.listToAttrs [
          (bind [mod] "BTN_LEFT" "move-view")
          (bind [mod] "BTN_RIGHT" "resize-view")
          (bind [alt] "BTN_LEFT" "resize-view")
        ];
      };
    };
    extraConfig = ''
      ${rivertile} -view-padding 10 -outer-padding 10 &

      export XDG_CURRENT_DESKTOP=river
      dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
      systemctl --user import-environment DISPLAY WAYLAND_DISPLAY PATH XDG_CURRENT_DESKTOP
      systemctl --user restart graphical-session.target
    '';
    # There are problems with the automatically configured
    # systemd service, so for now I'll use my own config
    # to import the proper variables into systemd.
    systemd.enable = false;
  };

  systemd.user.services.river-wallpaper = {
    Unit = {
      PartOf = ["graphical-session.target"];
      Description = "Set wallpaper";
      ConditionPathExistsGlob = ["%t/wayland-*"];
    };
    Service = {
      ExecStart = "${pkgs.swaybg}/bin/swaybg -i ${../../../../assets/wolf.jpg}";
      Restart = "on-failure";
      RestartSec = 1;
    };

    Install.WantedBy = ["graphical-session.target"];
  };

  systemd.user.services.river-autolock = {
    Unit = {
      PartOf = ["graphical-session.target"];
      Description = "Lock screen automatically after 15 minutes";
      ConditionPathExistsGlob = ["%t/wayland-*"];
    };
    Service = {
      ExecStart = ''
        ${swayidle} \
          -w timeout 900 ${waylockCommand} \
          before-sleep ${waylockCommand} \
          timeout 915 "${light} -O; ${light} -S 0" \
          resume "${light} -I" \
          lock ${waylockCommand}
      '';
      Restart = "on-failure";
      RestartSec = 1;
    };
    Install.WantedBy = ["graphical-session.target"];
  };
}
