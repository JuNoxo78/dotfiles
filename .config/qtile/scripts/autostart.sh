#!/bin/bash

function run {
  if ! pgrep -x $(basename $1 | head -c 15) 1>/dev/null;
  then
    $@&
  fi
}

keybLayout=$(setxkbmap -v | awk -F "+" '/symbols/ {print $2}')

#start sxhkd to replace Qtile native key-bindings
run sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &

# Arco Linux
run pamac-tray &
numlockx on &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
# Composer
picom &
# Authentication of ntfs
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#Background
feh --bg-scale /mnt/3741d66f-0376-481e-9d69-022851616c19/OneDrive/Wallpapers/wallpapers/0007.jpg
# Network
run nm-applet &
# Automount Devices
udiskie -t &
# systray battery icon
run xfce4-power-manager &
# systray volume
run volumeicon &
# Bluettoh
blueman-applet &
# Client Mail
run mailspring --background %U &