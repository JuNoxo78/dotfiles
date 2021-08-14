#!/bin/bash

# Spectrwm autostart script

xob-pulse-py | xob -s pulse &
xob-brightness-js | xob -s brightness &
# Wallpaper
feh --bg-scale /home/juan/MEGA/Wallpapers/wallpapers/0019.jpg
# Automount Devices
udiskie -t &
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
