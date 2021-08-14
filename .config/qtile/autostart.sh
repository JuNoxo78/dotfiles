#!/bin/sh

# Wallpaper
feh --bg-scale /home/juan/MEGA/Wallpapers/wallpapers/0031.jpg
# Overlay Bar
xob-pulse-py | xob -s pulse &
xob-brightness-js | xob -s brightness &
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
