pkgs:
pkgs.writeShellScript "rofi-power-menu.sh" ''
  MENU="$(echo "Lock|Suspend|Logout|Reboot|Shutdown" | ${pkgs.rofi}/bin/rofi -sep "|" -dmenu -i -p '襤' -lines 5)"
  case "$MENU" in
      *Lock) loginctl lock-session $XDG_SESSION_ID ;;
      *Suspend) systemctl suspend ;;
      *Logout) loginctl kill-session $XDG_SESSION_ID;;
      *Reboot) systemctl reboot ;;
      *Shutdown) systemctl -i poweroff
  esac
''
