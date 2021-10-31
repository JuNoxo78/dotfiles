#!/bin/sh

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
