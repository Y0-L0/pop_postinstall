#!/bin/bash

# Specify the normal user variable no matter whether root or non root script execution

if [[ $EUID = 0 ]]
then
# When sudo bash...
	nor_user="$SUDO_USER"
else	
# When bash... (without sudo)
	nor_user="$USER"
fi

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
data_dir=/media/jojo_data
win_dir=/media/windows
# Program Download Directory
prodown_dir=/home/$nor_user/program_stuff