#!bin/bash  
> ~/.Xresources
cat ~/.cache/wal/colors.Xresources  >> ~/.Xresources
xrdb ~/.Xresources
killall emacs
emacs --daemon 
emacsclient -n -create-frame --alternate-editor=""
emacsclient -e "(load-theme 'xresources t)"

if [ "$DESKTOP_SESSION" = "bspwm" ] 
then  
	notify-send "resetting polybar" --icon=preferences-desktop-wallpaper
	screen bash ~/.config/polybar/launch &
fi 

