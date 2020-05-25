#!bin/bash  
> ~/.Xresources
cat ~/.cache/wal/colors.Xresources  >> ~/.Xresources
xrdb ~/.Xresources
killall emacs
emacs --daemon 
emacsclient -n -create-frame --alternate-editor=""
screen bash ~/.config/polybar/launch &
emacsclient -e "(load-theme 'xresources t)"
