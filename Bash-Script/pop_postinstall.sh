#!/bin/bash

# Inistial installation script for Ubuntu (POP!OS)
# Version 1.0
# Name: pop_postinstall_v0.2.sh

# To-Do:
# - Change Clock settings to work with Windows


# Make it executable
# sudo chmod +x ./pop_postinstall_v0.1.sh 

# Making it interactive, code from https://gist.github.com/davejamesmiller/1965569

sudo chmod +x program_install.sh automount_partitions.sh symlink_homedir.sh var.sh 
bash var.sh
source var.sh
source ask.sh

# Initial Backup!

sudo bash just_backup.sh

if ask "Are you ready to continue?"; then
	sudo bash program_install.sh
	sudo bash automount_partitions.sh
	sudo apt update -qq
	sudo apt upgrade -qq -yy
	sudo apt autoremove -yy
	echo ":D	finished with everything	:D"
fi
