#!/bin/bash 

mon_sel="${1}"

case "$mon_sel" in 
	"vga") notify-send "VGA only" --icon=video-display && xrandr --output VGA-1 --auto --output LVDS-1 --off --rotate normal --pos 0x0 
	;; 
	"lvds")notify-send "LVDS only" --icon=video-display &&  xrandr --output LVDS-1 --auto  --rotate normal --pos 0x0 --output VGA-1 --off   
	;; 
	"dualr") notify-send "Dual Monitor, Right" --icon=video-display &&  xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --right-of LVDS-1
	;; 
	"duall") notify-send "Dual Monitor, Left" --icon=video-display && xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --left-of LVDS-1  
	;; 
	"blank") notify-send "blanking screen" --icon=video-display && xrandr --output LVDS-1 --off --output VGA-1 --off 
	;; 
	"dp1") notify-send "DP1 only" --icon=video-display && xrandr --output LVDS-1 --off --output DP-1 --auto --rotate normal --pos 0x0
	;; 
	"lvdsdp1") notify-send "DP1 w/ LVDS" --icon=video-display && xrandr --output DP-1 --off --output LVDS-1 --auto --rotate normal --pos 0x0
esac

if [ "$DESKTOP_SESSION" = "bspwm" ] 
then  
	notify-send "resetting polybar" --icon=preferences-desktop-wallpaper
	~/.config/polybar/launch
fi 
	






