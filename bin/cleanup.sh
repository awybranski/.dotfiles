#!/bin/bash


rm -f ~/.vimrc 	#deletes '.vimrc' file from home directory

WORD="source ~/.doftiles/bashrc_custom"

sed -i 's/$WORD//g' ~/.bashrc 
#deletes the 'source ~/.dotfiles/bashrc_custom' that is at the end of the bashrc_custom

rm -rf ~/.TRASH 	#deletes mt trash directory in my home directory

