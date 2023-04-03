#!/bin/bash



NAME=$(uname) #stores output of uname to variable NAME

if [[ "$NAME" != *"Linux"* ]]; then #enters if $NAME doesn't equal linux
	    echo "ERROR --> Incorrect operating system detected!" >> linuxsetup.log #dumps error if NAME variable doesn't equal "Linux" 
	        exit
fi

mkdir -p ~/.TRASH   #creates trash directory in home directory if not already existant


if [[ -f "~/.vimrc" ]]; then
	mv ~/.vimrc ~/.bup_vimrc #changes name of .vimrc to .bup_vimrc
	echo "Current '.vimrc' file was changed to '.bup_vimrc'" >> linuxsetup.log #dumps message to linuxsetup saying that .vimrc file's name changed
fi


cat ./etc/vimrc > ~/.vimrc   #overwrites the file .vimrc file with the contents of vimrc

echo "source ~/.dotfiles/etc/bashrc_custom" > ~/.bashrc  #prints source into .bashrc file 

