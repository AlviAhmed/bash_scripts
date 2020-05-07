#!/bin/bash 


FOO=$(bspc query -N -n focused)   

TOGGLE=$HOME/.toggle_hid.txt            # variable for file creation

if [ ! -e $TOGGLE ]; then       # if the file does not exist
    touch $TOGGLE   
	echo $FOO >> $TOGGLE
	xdo hide $FOO   
else                            # if the command runs again and file is there, do command2 and rm file 
	GOO=$(cat $TOGGLE) 
    rm $TOGGLE	  
	xdo show $GOO
fi

