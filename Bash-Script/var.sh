#!/bin/bash

# Specify the normal user variable no matter whether root or non root script execution

if [[ $EUID = 0 ]]
then
# When sudo bash...
	NOR_USER="$SUDO_USER"
else	
# When bash... (without sudo)
	NOR_USER="$USER"
fi

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
data_dir=/media/jojo_data
win_dir=/media/windows
# Program Download Directory
prodown_dir=/home/$NOR_USER/program_stuff