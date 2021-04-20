#!/bin/bash

# OUTDATED!
# not updated with new variables/ system and not tested in vm.
# this script creates symlinks from /media/jojo_data to ~/home

# Prerequisits
source var.sh
source ask.sh

#Confirm correct source directory for symlinks
echo
ls "$PERS_DIR"
if ! ask "Is this the correct source directory?"; then
    echo "specify the correct directory"
    read pers_dir
fi

# change "$NOR_USER" from root to system user
# i currently dont have a better way of finding the 
echo "Username"
read -r nor_user

# backup all old Directories
mkdir /home/"$NOR_USER"/program_stuff/Backups
mv /home/"$NOR_USER"/Desktop 	/home/"$NOR_USER"/program_stuff/Backups/Old_Desktop
mv /home/"$NOR_USER"/Documents 	/home/"$NOR_USER"/program_stuff/Backups/Old_Documents
mv /home/"$NOR_USER"/Downloads 	/home/"$NOR_USER"/program_stuff/Backups/Old_Downloads
mv /home/"$NOR_USER"/Music 		/home/"$NOR_USER"/program_stuff/Backups/Old_Music
mv /home/"$NOR_USER"/Pictures 	/home/"$NOR_USER"/program_stuff/Backups/Old_Pictures
mv /home/"$NOR_USER"/Videos 	/home/"$NOR_USER"/program_stuff/Backups/Old_Desktop/Videos

# ln -s creates symlinks
ln -s /"$PERS_DIR"/Desktop 	    /home/"$NOR_USER"/
ln -s /"$PERS_DIR"/Documents	/home/"$NOR_USER"/
ln -s /"$PERS_DIR"/Downloads	/home/"$NOR_USER"/
ln -s /"$PERS_DIR"/Music	 	/home/"$NOR_USER"/
ln -s /"$PERS_DIR"/Pictures 	/home/"$NOR_USER"/
ln -s /"$PERS_DIR"/Videos 	    /home/"$NOR_USER"/
ls /home/"$NOR_USER"/Pictures
echo
