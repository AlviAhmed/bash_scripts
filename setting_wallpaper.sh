# #!bin/bash 

# wal_sel="${1}" 
# cp $wal_sel ~/Pictures/wallpapers/wallpaper.png
# notify-send "Changed Wallpaper"
#!bin/bash 

wal_sel=$1
dir_sel=$(pwd) 
delim="/"
string_sel=$dir_sel$delim
str2=$string_sel$wal_sel
cp $wal_sel  ~/Pictures/wallpapers/wallpaper.png

feh --bg-fill ~/Pictures/wallpapers/wallpaper.png

notify-send "Changing wallpaper to $wal_sel" --icon=emblem-photos
