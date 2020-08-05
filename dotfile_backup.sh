#!/bin/bash 

printf "Enter a commit message for dot files \n" 
read dot_message
printf "\n"
printf "Enter a commit message for bash scripts repo \n"
read bash_message
printf "\n"

printf "Will now be backuping necessary dot files \n"  

printf "Backuping emacs directory \n"  
cp -urv ~/.emacs.d ~/Documents/Git_Projects/dot_config_files  && cp -urv ~/.emacs.d ~/back_emacs/

printf "Backing up the bin directory \n" 
cp -urv ~/bin ~/Documents/Git_Projects/bash_scripts/.

printf "Backing up .bashrc \n"    
cp -urv ~/.bashrc ~/Documents/Git_Projects/dot_config_files

printf "Backing up dwm \n"    
cp -urv ~/dwm/. ~/Documents/Git_Projects/dot_config_files/dwm/

printf "Backing up openbox \n"    
cp -urv ~/.config/openbox/. ~/Documents/Git_Projects/dot_config_files/openbox/

printf "Backing .bash_aliases \n"    
cp -urv ~/.bash_aliases ~/Documents/Git_Projects/dot_config_files/.bash_aliases  

printf "Backing .profile \n"    
cp -urv ~/.profile ~/Documents/Git_Projects/dot_config_files/.profile  

printf "Backing up bspwmrc"
cp -urv ~/.config/bspwm ~/Documents/Git_Projects/dot_config_files/

printf "Backing up polybar"
cp -urv ~/.config/polybar ~/Documents/Git_Projects/dot_config_files/

printf "Backing up tint2"
cp -urv ~/.config/tint2/tint2rc ~/Documents/Git_Projects/dot_config_files/

printf "Backing up sxhkd"
cp -urv ~/.config/sxhkd ~/Documents/Git_Projects/dot_config_files/

printf "Backing up xprofile" 
cp -urv ~/.xprofile ~/Documents/Git_Projects/dot_config_files/

printf "Backing up Xresources" 
cp -urv ~/.Xresources ~/Documents/Git_Projects/dot_config_files/

printf "Backing up backing up herbsluft config" 
cp -urv ~/.config/herbstluftwm/autostart ~/Documents/Git_Projects/dot_config_files/

printf "Backing up bash_scripts" 
cp -urv ~/bash_scripts/.  ~/Documents/Git_Projects/bash_scripts/

printf "Cd into Git Repo \n" 
cd ~/Documents/Git_Projects/dot_config_files/

printf "Adding and commiting to dot config file repo \n"

printf "Git Add \n"    
git add -A 

printf "Git Commit \n"    
git commit -m "$dot_message"

printf "Git Push \n"    
git push origin master

printf "Adding and commiting to bash_scripts repo \n" 

printf "Cd into Git Repo \n" 
cd ~/Documents/Git_Projects/bash_scripts

printf "Git Add \n"    
git add -A 

printf "Git Commit \n"    
git commit -m "$bash_message"

printf "Git Push \n"    
git push origin master

printf "Backing up bash scripts to usb" 
cp -urv ~/bash_scripts/.  /media/al/Backup\ Plus/linux_experimental_backup_with_terminal/al/Documents/Git_Projects/bash_scripts

printf "Backing up dot files to usb" 
cp -urv ~/Documents/Git_Projects/dot_config_files/.  /media/al/Backup\ Plus/linux_experimental_backup_with_terminal/al/Documents/Git_Projects/dot_config_files


