#!/bin/bash

# Checking dependencies

sudo apt install -y sassc bc inkscape optipng papirus-icon-theme

cd ~/Downloads
git clone https://github.com/hrdwrrsk/tetra-gtk-theme.git
sudo ./tetra-gtk-theme/install.sh

sudo apt purge -y sassc bc
rm -rf ./tetra-gtk-theme

# Fixing height and font size in Gnome shell top bar for my laptop's screen
sudo sed -i.bak s/'  height: 28px'/'  height: 40px'/g /usr/share/themes/Tetra/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  height: 28px'/'  height: 40px'/g /usr/share/themes/Tetra-dark/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  height: 28px'/'  height: 40px'/g /usr/share/themes/Tetra-light/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  font-size: 9pt'/'  font-size: 11pt' /usr/share/themes/Tetra/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  font-size: 9pt'/'  font-size: 11pt' /usr/share/themes/Tetra-dark/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  font-size: 9pt'/'  font-size: 11pt' /usr/share/themes/Tetra-light/gnome-shell/gnome-shell.css

gsettings set org.gnome.desktop.interface gtk-theme 'Tetra'
gsettings set org.gnome.desktop.interface icon-theme 'ePapirus'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 11'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Bold 11'
