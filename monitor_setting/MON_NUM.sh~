#!/bin/bash

MONITOR_QUERY=$(xrandr --query | grep -w 'connected' | cut -d " " -f 1 |  wc -l)

if [[ $MONITOR_QUERY = "3" ]]; then 
	notify-send "3 monitor setup"
elif [[ $MONITOR_QUERY = "2" ]]; then 
	notify-send "2 monitor setup" && bash ~/bash_scripts/monitor_setting/DUALL.sh &
else
	notify-send "1 monitor setup"
fi










