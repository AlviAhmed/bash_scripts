#!/bin/bash 

delim="|" 
FOO=$(pactl list sinks | grep Volume | cut -d '/' -f 2 | sed -n 1p)     
xsetroot -name " Vol:$(echo $FOO) $(echo $delim) $(date) "



