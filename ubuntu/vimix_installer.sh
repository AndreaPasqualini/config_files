#!/bin/bash

# Checking dependencies
sudo apt install -y gtk2-engines-murrine gtk2-engines-pixbuf

# Downloading GTK and icon themes
cd ~/Downloads
git clone https://github.com/vinceliuice/vimix-gtk-themes.git
git clone https://github.com/vinceliuice/vimix-icon-theme.git

# Installing the theme
sudo ./vimix-gtk-themes/Install -d /usr/share/themes
sudo ./vimix-icon-theme/Installer.sh

# Cleaning up the mess
rm -rf ./vimix-gtk-themes
rm -rf ./vimix-icon-theme

# Setting the theme
gsettings set org.gnome.desktop.interface gtk-theme 'Vimix'
gsettings set org.gnome.desktop.interface icon-theme 'ePapirus'
gsettings set org.gnome.desktop.interface font-name 'Fira Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Fira Code 11'
gsettings set org.gnome.desktop.interface document-font-name 'Fira Sans 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Fira Sans Bold 11'
