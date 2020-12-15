#!/bin/bash 

mon_sel="${1}"

if [ "$DESKTOP_SESSION" = "bspwm" ] 
then
    echo "BSPWM Detected, continuing settings"
    
    case "$mon_sel" in 
	"vga") echo "VGA only" && xrandr --output VGA-1 --auto --output LVDS-1 --off --rotate normal --pos 0x0 && bspc monitor VGA-1 -d 1 2 3 4 5 6 7 8 9
	       ;; 
	"lvds")echo "LVDS only"  &&  xrandr --output LVDS-1 --auto  --rotate normal --pos 0x0 --output VGA-1 --off && bspc monitor LVDS-1 -d 1 2 3 4 5 6 7 8 9
	       ;; 
	"dualr") echo "Dual Monitor, Right"  &&  xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --right-of LVDS-1
	         ;; 
	"duall") echo "Dual Monitor, Left"  && xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --left-of LVDS-1  
	         ;; 
	"blank") echo "blanking screen"  && xrandr --output LVDS-1 --off --output VGA-1 --off 
	         ;; 
	"dp1") echo "DP1 only"  && xrandr --output LVDS-1 --off --output DP-1 --auto --rotate normal --pos 0x0
	       ;; 
	"lvdsdp1") echo "DP1 w/ LVDS"  && xrandr --output DP-1 --off --output LVDS-1 --auto --rotate normal --pos 0x0
    esac
elif [ "$DESKTOP_SESSION" = "herbstluftwm" ]
then
    echo "Herbstluftwm Detected, continuing settings"
    
    case "$mon_sel" in 
	"vga") echo "VGA only" && xrandr --output VGA-1 --auto --output LVDS-1 --off --rotate normal --pos 0x0 && herbstclient set_monitors 1920x1080+0+0
	       ;; 
	"lvds")echo "LVDS only"  &&  xrandr --output LVDS-1 --auto  --rotate normal --pos 0x0 --output VGA-1 --off && herbstclient set_monitors 1600x900+0+0
	       ;; 
	"dualr") echo "Dual Monitor, Right"  &&  xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --right-of LVDS-1
	         ;; 
	"duall") echo "Dual Monitor, Left"  && xrandr --output LVDS-1 --auto --rotate normal --pos 0x0 --output VGA-1 --auto  --rotate normal --left-of LVDS-1  
	         ;; 
	"blank") echo "blanking screen"  && xrandr --output LVDS-1 --off --output VGA-1 --off 
	         ;; 
	"dp1") echo "DP1 only"  && xrandr --output LVDS-1 --off --output DP-1 --auto --rotate normal --pos 0x0
	       ;; 
	"lvdsdp1") echo "DP1 w/ LVDS"  && xrandr --output DP-1 --off --output LVDS-1 --auto --rotate normal --pos 0x0
    esac
    herbstclient reload
else
    echo "Unique Window manager detected"
fi 

# if [ "$DESKTOP_SESSION" = "bspwm" ] 
# then  
# 	notify-send "resetting polybar" --icon=preferences-desktop-wallpaper
# 	~/.config/polybar/launch
# fi 







