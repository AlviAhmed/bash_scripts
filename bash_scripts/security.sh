#!/bin/bash

while true; do
read -rsn1 key # -s: do not echo input character. -n 1: read only 1 character (separate with space)
if [[ "$key" != "d" ]]
then
   pactl set-sink-mute 0 0 #This makes sure the volume is unmuted
	pactl set-sink-volume 0 200% #Cranks volume to 200%
    espeak -a 200 -g 0.5 -p 0.5 "STOP TOUCHING MY COMPUTER" #This plays the sound  
    pactl set-sink-mute 0 0 #This makes sure the volume is unmuted
    #    pactl set-sink-volume 0 0% #brings volume back to 0
else
    echo "right choice";
    break;
    
fi
done

