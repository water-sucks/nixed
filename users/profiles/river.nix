{
  self,
  pkgs,
  lib,
  ...
}: let
  riverctl = "${pkgs.river}/bin/riverctl";
  rivertile = "${pkgs.river}/bin/rivertile";

  modifier = keys:
    with lib;
      if length keys < 1
      then "None"
      else (concatStringsSep "+" keys);
  bind = modkeys: key: command: "${modifier modkeys} ${key} ${command}";
  exec = modkeys: key: command: ''${modifier modkeys} ${key} spawn "${command}"'';

  nmap = binding: "${riverctl} map normal ${binding}";
  lmap = binding: "${riverctl} map locked ${binding}";
  pmap = binding: "${riverctl} map-pointer normal ${binding}";

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
  swayidle = "${pkgs.swayidle}/bin/swayidle";
  waylockWrapper =
    pkgs.writeShellScriptBin "waylock"
    "${pkgs.waylock}/bin/waylock -init-color 0x121212 -input-color 0x732735 -fail-color 0x8a0801 $@";
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
  powerMenu = import ./power-menu.nix pkgs;
in {
  home.packages = with pkgs; [waylockWrapper wl-clipboard pavucontrol];

  wayland.windowManager.river = {
    enable = true;

    init = let
      bindings = lib.lists.flatten [
        # General
        (nmap (bind [mod] "q" "close"))
        (nmap (bind [mod ctrl alt] "q" "exit"))
        (nmap (bind [mod shift] "f" "toggle-float"))
        (nmap (bind [mod] "f" "toggle-fullscreen"))

        # Views
        (nmap (bind [mod alt] "h" "move left 100"))
        (nmap (bind [mod alt] "j" "move down 100"))
        (nmap (bind [mod alt] "k" "move up 100"))
        (nmap (bind [mod alt] "l" "move right 100"))
        (nmap (bind [mod alt ctrl] "h" "snap left"))
        (nmap (bind [mod alt ctrl] "j" "snap down"))
        (nmap (bind [mod alt ctrl] "k" "snap up"))
        (nmap (bind [mod alt ctrl] "l" "snap right"))
        (nmap (bind [mod alt shift] "h" "resize horizontal -100"))
        (nmap (bind [mod alt shift] "j" "resize vertical 100"))
        (nmap (bind [mod alt shift] "k" "resize vertical -100"))
        (nmap (bind [mod alt shift] "l" "resize horizontal 100"))
        (nmap (bind [mod] "j" "focus-view next"))
        (nmap (bind [mod] "k" "focus-view previous"))
        (nmap (bind [mod shift] "j" "swap next"))
        (nmap (bind [mod shift] "k" "swap previous"))
        (nmap (bind [mod] "t" "zoom"))
        (pmap (bind [mod] "BTN_LEFT" "move-view"))
        (pmap (bind [mod] "BTN_RIGHT" "resize-view"))
        (pmap (bind [alt] "BTN_LEFT" "resize-view"))

        # Tags
        (let
          i' = i: toString (pow 2 (i - 1));
          range = lib.range 1 9;
        in [
          (map (i: (nmap (bind [mod] "${toString i}" "set-focused-tags ${i' i}"))) range)
          (map (i: (nmap (bind [mod shift] "${toString i}" "set-view-tags ${i' i}"))) range)
          (map (i: (nmap (bind [mod ctrl] "${toString i}" "toggle-focused-tags ${i' i}"))) range)
          (map (i: (nmap (bind [mod shift ctrl] "${toString i}" "set-view-tags ${i' i}"))) range)
        ])
        (let
          allTags = toString (pow 2 32);
        in [
          (nmap (bind [mod] "0" "set-focused-tags ${allTags}"))
          (nmap (bind [mod shift] "0" "set-view-tags ${allTags}"))
        ])
        (nmap (bind [mod] "w" "focus-previous-tags"))
        (nmap (bind [mod shift] "w" "send-to-previous-tags"))

        # Outputs
        (nmap (bind [mod] "Period" "focus-output next"))
        (nmap (bind [mod] "Comma" "focus-output previous"))
        (nmap (bind [mod shift] "Comma" "send-to-output previous"))
        (nmap (bind [mod shift] "Comma" "send-to-output previous"))

        # Rivertile
        (let
          rivertile = command: ''send-layout-cmd rivertile "${command}"'';
        in [
          (nmap (bind [mod shift] "h" (rivertile "main-ratio -0.05")))
          (nmap (bind [mod shift] "l" (rivertile "main-ratio +0.05")))
          (nmap (bind [mod ctrl] "h" (rivertile "main-count +1")))
          (nmap (bind [mod ctrl] "l" (rivertile "main-count -1")))
          (nmap (bind [mod] "Up" (rivertile "main-location top")))
          (nmap (bind [mod] "Right" (rivertile "main-location right")))
          (nmap (bind [mod] "Down" (rivertile "main-location bottom")))
          (nmap (bind [mod] "Left" (rivertile "main-location left")))
        ])

        # Commands
        (nmap (exec [mod] return "${kitty}"))
        (nmap (exec [mod] "space" "rofi -show drun"))
        (nmap (exec [mod shift] return "rofi -show combi -combi-modi 'drun,window,run,ssh' -modi combi"))
        (nmap (exec [] "Print" "${screenshot}"))
        (nmap (exec [mod] "Print" "${screenshot} -s"))
        (nmap (exec [ctrl alt] "Delete" "${powerMenu}"))
        (nmap (exec [mod] "l" "${waylockCommand}"))

        # Media buttons (also work in locked mode)
        (map (f: [
          (f (exec [] "XF86AudioRaiseVolume" ''${amixer} sset Master 1%+ | ${sed} -En 's/.*\[([0-9]+)%\].*/\1/p' | head -1 > ${wobSocket}''))
          (f (exec [] "XF86AudioLowerVolume" ''${amixer} sset Master 1%- | ${sed} -En 's/.*\[([0-9]+)%\].*/\1/p' | head -1 > ${wobSocket}''))
          (f (exec [] "XF86AudioMute" ''${amixer} sset Master toggle | ${sed} -En '/\[on\]/ s/.*\[([0-9]+)%\].*/\1/ p; /\[off\]/ s/.*/0/p' | head -1 > ${wobSocket}''))
          (f (exec [] "XF86AudioMicMute" "${amixer} sset Capture toggle"))
          (f (exec [] "XF86AudioMedia" "${playerctl} play-pause"))
          (f (exec [] "XF86AudioPlay" "${playerctl} play-pause"))
          (f (exec [] "XF86AudioPrev" "${playerctl} previous"))
          (f (exec [] "XF86AudioNext" "${playerctl} next"))
          (f (exec [] "XF86MonBrightnessUp" "${light} -A 5 && ${light} -G | cut -d'.' -f1 > ${wobSocket}"))
          (f (exec [] "XF86MonBrightnessDown" "${light} -U 5 && ${light} -G | cut -d'.' -f1 > ${wobSocket}"))
          (f (exec [] "XF86Calculator" "rofi -modi calc -show calc"))
        ]) [nmap lmap])
      ];
    in ''
      ${riverctl} background-color 0x121212
      ${riverctl} border-color-focused 0x732735
      ${riverctl} border-color-unfocused 0x333333

      dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY
      systemctl --user import-environment DISPLAY WAYLAND_DISPLAY
      systemctl --user restart graphical-session.target
      systemctl --user restart wob.socket

      ${lib.concatStringsSep "\n" bindings}

      ${riverctl} set-repeat 50 300

      ${riverctl} float-filter-add app-id Rofi

      ${riverctl} default-layout rivertile
      ${rivertile} -view-padding 10 -outer-padding 10
    '';
  };

  systemd.user.services.river-wallpaper = {
    Unit = {
      PartOf = ["graphical-session.target"];
      After = ["graphical-session-pre.target"];
      Description = "Set wallpaper";
      ConditionPathExistsGlob = ["%t/wayland-*"];
    };
    Service = {
      ExecStart = "${pkgs.swaybg}/bin/swaybg -i ${self}/assets/woah.jpg";
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
