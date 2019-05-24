#!/bin/sh

# Set keyboard layout
setxkbmap latam

sxhkd &

# DWM
make -C /home/jcrcx/dwm
~/.dwm_status &
exec /home/jcrcx/dwm/dwm

