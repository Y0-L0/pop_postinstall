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

echo
echo "Normal user:"
echo $nor_user
