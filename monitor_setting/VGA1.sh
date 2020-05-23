#!/bin/bash 


notify-send "VGA only"
xrandr --output VGA-1 --auto --output LVDS-1 --off --rotate normal --pos 0x0 # putting all display on lvds 

~/.config/polybar/launch
