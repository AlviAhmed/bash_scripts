#!/bin/bash  

xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --left-of LVDS-1 

~/.config/polybar/launch 
