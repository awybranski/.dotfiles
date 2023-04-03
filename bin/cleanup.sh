#!/bin/bash


rm -f ~/.vimrc 	#deletes '.vimrc' file from home directory

sed -i 's/source \~\/\.dotfiles\/etc\/bashrc\_custom//g' ~/.bashrc 
#deletes the 'source ~/.dotfiles/bashrc_custom' that is at the end of the bashrc_custom

rm -rf ~/.TRASH 	#deletes mt trash directory in my home directory

