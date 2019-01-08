#!/bin/bash

# Installing the theme
sudo apt install -y materia-gtk-theme papirus-icon-theme fonts-roboto

# Setting the theme
gsettings set org.gnome.desktop.interface gtk-theme 'Materia-light-compact'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'
gsettings set org.gnome.desktop.interface font-name 'Roboto 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Roboto Mono 11'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Roboto Bold 11'
