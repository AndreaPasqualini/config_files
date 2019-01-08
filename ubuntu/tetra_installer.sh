#!/bin/bash

# Checking dependencies

sudo apt install -y sassc bc inkscape optipng papirus-icon-theme

cd ~/Downloads
git clone https://github.com/hrdwrrsk/tetra-gtk-theme.git
sudo ./tetra-gtk-theme/install.sh

sudo apt purge -y sassc bc
rm -rf ./tetra-gtk-theme

gsettings set org.gnome.desktop.interface gtk-theme 'Tetra'
gsettings set org.gnome.desktop.interface icon-theme 'ePapirus'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 11'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Bold 11'
