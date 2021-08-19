#!/bin/sh

# Wallpaper
feh --bg-scale /home/juan/MEGA/Wallpapers/wallpapers/0290.jpg
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
# Bluettoh
blueman-applet &
