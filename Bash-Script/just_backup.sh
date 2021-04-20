#!/bin/bash

sudo chmod +x ./program_install.sh ./automount_partitions.sh ./symlink_homedir.sh ./pop_postinstall.sh

# Initial Backup!
sudo apt install -yy -qq gparted 
sudo apt-add-repository -yy ppa:teejee2008/ppa
sudo apt update -qq
sudo apt install -yy -qq timeshift
echo
echo "Create an initial snapshot of your system"
