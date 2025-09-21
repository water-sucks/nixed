{
  pkgs,
  lib,
  ...
}: let
  powerMenuScript = pkgs.writeShellScriptBin "rofi-power-menu" ''
    MENU="$(echo "Lock|Suspend|Logout|Reboot|Shutdown" | ${lib.getExe pkgs.rofi} -sep "|" -dmenu -i -p '󰐥' -lines 5)"
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
    powerMenuScript
  ];
}
