#!/bin/bash


NAME=$(uname) #this creates a variable that will hold the output of the comand within the ().

if ["$NAME" != *"Linux"*]; then #if the varibale NAME is not = to "linux" it will enter	
	echo "Error - system name is not linux" > linuxsetup.log  #dumps error message to linuxsetup.sh
	exit
fi

mkdir -r .TRASH   #creates trash directory if not already existant

mv ~/.vimrc .bup_vimrc   #renames .vimrc file to .bup_vimrc if it exists

echo "Current '.vimrc' file was changed to '.bup_vimrc'" > linuxsetup.log  
#prints message to linuxsetup.log saying file name was changed

touch ~/.vimrc #creates .vimrc file in home directory

cat ~/.dofiles/etc/vimrc >> ~/.vimrc   #overwrites .vimrc file with contents of vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" > ~/.bashrc  #prints source into .bashrc file 

