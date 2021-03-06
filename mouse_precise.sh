#!/bin/bash
uin=0.1
tbnid=$(xinput list | grep Trackball | sed -r 's/.*id=(\S+).*/\1/')
tbnid=$(xinput list | grep Trackball | sed -r 's/.*id=(\S+).*/\1/')
if [ -z "$tbnid" ] 
then 
	notify-send "No track ball found" 
else
ctmid=$(xinput -list-props $tbnid | grep Matrix |  sed -r 's/.* Matrix \((\S+)\).*/\1/')
xinput -set-prop $tbnid $ctmid $uin 0 0 0 $uin 0 0 0 1
notify-send "Current Mouse Sensitivity: $uin"
fi
