#!/bin/bash

# Problems:
# - Nextcloud desktop is an old version (xenial)
# - Sometimes I still get prompted to do stuff


# Making it interactive, code from https://gist.github.com/davejamesmiller/1965569
bash var.sh
source var.sh
source ask.sh

# Getting started
sudo apt update -qq
sudo apt upgrade -y -qq
sudo apt-get -y remove gnome-games gnome-games-common empathy

# Basic Program installation
sudo apt install -yy keepassxc xdotool evolution gnome-tweak-tool software-properties-gtk

# Snap program installation
	sudo apt install snapd -y
	sudo snap install vlc whatsdesk signal-desktop android-file-transfer-linux joplin_desktop
echo

# Special Program installation

# Change to Program Download Directory
mkdir $"prodown_dir" || exit
cd $"prodown_dir" || exit

# Joplin now snap
#	wget -c -N -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
# Nextcloud Desktop
#	sudo add-apt-repository ppa:nextcloud-devs/client
# Teamviewer
	wget -c -N https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
	sudo apt install /$"prodown_dir"/teamviewer_amd64.deb
# VSCode (Microsoft Code editor)
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -yy -qq
# Telegram
	sudo add-apt-repository -y ppa:atareao/telegram

sudo apt update
sudo apt install -y  code telegram-desktop
echo "Programms installed"
echo