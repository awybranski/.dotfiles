# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## .gitignore
This file tells git which files or directories to ignore so that they are not pushed to Github.
## bashrc_custom
This is file contains alias and functions that I created to make commands that are used often quicker to use. 
Some examples of these alias's are 'cdd' which calls the 'cd ..' command and 'untar' which calls the 'untarfunc' command to untar a file or directory. 
I created two functions - which also have aliases to call them - untar and tar. both of these files take the file that is to be used in tar or untar and create a variable and then place that variable in the orignal tar/untar command.
## vimrc
This file is similar to my .vimrc config. It sets some configurations within my vim. It sets syntax, number, autoindent, and ruler. It sets the color to be used inside of the vim to elflord.
## linux.sh
This file is a script that checks that the uname of the system is 'Linux' and if it does not, then it sends an error message to a linuxsetup.log file. It then creates a trash directory in my home directory. It changes my '.vimrc' file name to '.bup_vimrc' if the file exits and then drops a message in my linuxsetup.log file saying that the name was changed. The script then redirects the contents of my vimrc to a new '.vimrc' file in my home directory. Finally it adds a statement ("source ~/.dotfiles/bashrc_custom") to the bottom of my '.bashrc' file.
## cleanup.sh
This script reverses anything that was done in the 'linux.sh' script. It removes the .vimrc file from my home directory, removes the statement ("source ~/.dotfiles/bashrc_custom") from my '.bashrc file, and removes the '.TRASH' directory.
## Makefile
In this makefile I have two target linux and clean. My linux target has a dependency on the clean target and then will run my 'linux.sh' script. My clean target has o dependecy and runs my 'cleanup.sh' script.

