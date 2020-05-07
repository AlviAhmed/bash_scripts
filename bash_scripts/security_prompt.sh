#!/bin/bash 
xrandr --output LVDS-1 --off --output VGA-1 --off
notify-send "Security Engaged" &&
xfce4-terminal --maximize --hide-menubar  --hide-borders -x  ~/bash_scripts/security.sh
bspc desktop -l next  
polybar-msg cmd toggle 


