#!/bin/bash 


FOO=$(bspc query -N -n focused)   

TOGGLE=$HOME/.toggle_hid.txt            # variable for file creation

if [ ! -e $TOGGLE ]; then       # if the file does not exist
    touch $TOGGLE   
	echo $FOO >> $TOGGLE
	# xdo hide $FOO
	bspc node $FOO -g hidden=on
else                            # if the command runs again and file is there, do command2 and rm file 
	GOO=$(cat $TOGGLE) 
    rm $TOGGLE	  
	# xdo show $GOO
	bspc node $GOO -g hidden=off
fi


