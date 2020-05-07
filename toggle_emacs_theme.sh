#!/bin/bash  

TOGGLE=$HOME/.toggle            # variable for file creation

if [ ! -e $TOGGLE ]; then       # if the file does not exist
    touch $TOGGLE 
	sed -i '2s/.*/ColorForeground=#000000/g' ~/.config/xfce4/terminal/terminalrc  
	sed -i '3s/.*/ColorBackground=#ffffff/g' ~/.config/xfce4/terminal/terminalrc 
	emacsclient -e "(load-theme 'modus-operandi t)" # light theme 
else                            # if the command runs again and file is there, do command2 and rm file
    rm $TOGGLE
	sed -i '2s/.*/ColorForeground=#ffffff/g' ~/.config/xfce4/terminal/terminalrc  
	sed -i '3s/.*/ColorBackground=#000000/g' ~/.config/xfce4/terminal/terminalrc 
	emacsclient -e "(load-theme 'modus-vivendi t)" # dark theme
fi
