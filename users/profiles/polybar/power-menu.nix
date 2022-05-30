pkgs: pkgs.writeShellScript "rofi-power-menu.sh" ''
  MENU="$(echo "Lock|Logout|Reboot|Suspend|Shutdown" | ${pkgs.rofi}/bin/rofi -sep "|" -dmenu -i -p '襤' -lines 5)"
  case "$MENU" in
      *Lock) ${pkgs.xorg.xset} s activate ;;
      *Logout) loginctl kill-session $XDG_SESSION_ID;;
      *Reboot) systemctl reboot ;;
      *Suspend) systemctl suspend ;;
      *Shutdown) systemctl -i poweroff
  esac
''
