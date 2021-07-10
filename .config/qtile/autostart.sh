#!/bin/sh

# Composer
picom &
# Wallpaper
feh --bg-scale /home/juan/MEGA/Wallpapers/03.jpg
# Network
nm-applet &
# Automount Devices
udiskie -t &
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &
# Mega
megasync &
