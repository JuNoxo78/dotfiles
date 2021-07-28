#!/bin/bash

# Spectrwm autostart script

picom &
xob-pulse-py | xob -s pulse &
xob-brightness-js | xob -s brightness &
# Authentication of ntfs
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# Wallpaper
feh --bg-scale /home/juan/MEGA/Wallpapers/wallpapers/0019.jpg
# Automount Devices
udiskie -t &
# systray battery icon
cbatticon -u 5 &
# Network
nm-applet &
# trayer                 \
#     --monitor primary  \
#     --edge top         \
#     --widthtype pixel  \
#     --width 100        \
#     --heighttype pixel \
#     --height 18        \
#     --align right      \
#     --margin 455       \
#     --transparent true \
#     --alpha 0          \
#     --tint 0x0F101A    \
#     --iconspacing 3    \
#     --distance 1 &
