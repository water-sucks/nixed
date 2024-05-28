{
  pkgs,
  lib,
  ...
}: let
  powerMenuScript = name: rofiPkg:
    pkgs.writeShellScriptBin name ''
      MENU="$(echo "Lock|Suspend|Logout|Reboot|Shutdown" | ${rofiPkg}/bin/rofi -sep "|" -dmenu -i -p '󰐥' -lines 5)"
      case "$MENU" in
        *Lock) loginctl lock-session $XDG_SESSION_ID ;;
        *Suspend) systemctl suspend ;;
        *Logout) loginctl kill-session $XDG_SESSION_ID;;
        *Reboot) systemctl reboot ;;
        *Shutdown) systemctl -i poweroff
      esac
    '';
in {
  assertions = with lib; [
    (hm.assertions.assertPlatform "rofi-power-menu" pkgs platforms.linux)
  ];

  home.packages = [
    (powerMenuScript "rofi-power-menu" pkgs.rofi)
    (powerMenuScript "rofi-power-menu-wayland" pkgs.rofi-wayland)
  ];
}
