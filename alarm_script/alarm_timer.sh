#!/bin/bash

#echo "How many minutes of study?"
#read -p 'Enter # of minutes: ' min 

for i in {1..30}
       do 
	 echo " Current # of Minutes: $i"
	   sleep 1m
    ##if [($i%60 == 0)]
    #    then
    #	    var = (($var + 1))
    #	    echo " # of Minutes Passed: $var"
    #fi 
    
done 

mplayer Siren_Noise-KevanGC-1337458893.mp3
notify-send 'BREAK TIME' '30 Minutes are up'
feh image_break.jpg 
