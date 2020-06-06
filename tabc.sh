#!/bin/sh

# Usage:
# tabc.sh <tabbed-id> <command>
# Commands:
#    add <window-id> 	- Add window to tabbed
#    remove <window-id> - Remove window from tabbed
#    list				- List all clients of tabbed
 
cmd=$1
dir=$2 
wid=$3
# if [ $cmd = "add" ]; then
#   	tabbedid=$(bspc query -N -n $2)
#   	if [ -z $tabbedid ]; then
#     		tabbed &
#     		sleep 0.1
#     		tabbedid=$(xdotool search --class tabbed | tail -n1)
#   	fi
# fi 
notify-send "testing 1"
if [$cmd = "add"]; then 
notify-send "testing 2"
	tabbedid=$(xdotool search --class tabbed | tail -n1)
notify-send "testing 3"
	xdotool windowreparent $wid $tabbedid;
notify-send "testing 4"
fi
notify-send "testing 5"

