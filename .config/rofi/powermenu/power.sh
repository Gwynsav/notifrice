#!/bin/sh
chosen=$(printf "\n\n" | rofi -dmenu -i -theme "$HOME/.config/rofi/powermenu/power.rasi")
case "$chosen" in
  "") sudo poweroff ;;
  "") sudo reboot ;;
  "") dkcmd exit ;;
  *) exit 1 ;;
esac
