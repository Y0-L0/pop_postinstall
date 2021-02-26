#!/bin/bash

# this script creates symlinks from /media/jojo_data to ~/home

# Prerequisits
source var.sh
source ask.sh

#Confirm correct source directory for symlinks
echo
ls $pers_dir
# if ! ask "Is this the correct source directory?"; then
# 	echo "specify the correct directory"
# 	read pers_dir
# fi

# chaneg $nor_user from root to system user
# i currently dont have a better way of finding the 
echo "Username"
read nor_user

# backup all old Directories
mkdir /home/$nor_user/program_stuff/Backups
mv /home/$nor_user/Desktop 		/home/$nor_user/program_stuff/Backups/Old_Desktop
mv /home/$nor_user/Documents 	/home/$nor_user/program_stuff/Backups/Old_Documents
mv /home/$nor_user/Downloads 	/home/$nor_user/program_stuff/Backups/Old_Downloads
mv /home/$nor_user/Music 		/home/$nor_user/program_stuff/Backups/Old_Music
mv /home/$nor_user/Pictures 	/home/$nor_user/program_stuff/Backups/Old_Pictures
mv /home/$nor_user/Videos 		/home/$nor_user/program_stuff/Backups/Old_Desktop/Videos

# ln -s creates symlinks
ln -s /$pers_dir/Desktop 	/home/$nor_user/
ln -s /$pers_dir/Documents	/home/$nor_user/
ln -s /$pers_dir/Downloads	/home/$nor_user/
ln -s /$pers_dir/Music	 	/home/$nor_user/
ln -s /$pers_dir/Pictures 	/home/$nor_user/
ln -s /$pers_dir/Videos 	/home/$nor_user/
ls /home/$nor_user/Pictures
echo
