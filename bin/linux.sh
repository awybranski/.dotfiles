#!/bin/bash


NAME=$(uname) #this creates a variable that will hold the output of the comand within the ().

#enters if output from uname doesn't equal linux
if[[ "$NAME" != *"Linux"* ]]; then
	echo "ERROR: system name is not linux" > linuxsetup.log #dumps error message to linuxsetup.log
	exit
fi

mkdir -p .TRASH   #creates trash directory if not already existant

if[[-f "~/.vimrc"]]; then
	mv ~/.vimrc .bup_vimrc
	echo "Current .vimrc file was changed to .bup_vimrc" > linuxsetup.log #renames .vimrc file if exists
	exit
fi

cat ./etc/vimrc >> ~/.vimrc   #overwrites .vimrc file with contents of vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" > ~/.bashrc  #prints source into .bashrc file 

