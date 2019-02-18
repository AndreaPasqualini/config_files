#!/bin/bash

sudo apt install -y \
muon \
usb-creator-kde \
filelight \
transmission-qt \
latte-dock

# See https://userbase.kde.org/KDE_System_Administration/Configuration_Files
# for documentation on the following

# See https://unix.stackexchange.com/questions/47080/mounting-iso-in-linux-kde/319018#319018
# for reference to the following

sudo mv ./iso_manager-mount-image.sh /bin/iso_manager-mount-image.sh
mv mount-iso.desktop ~/.local/share/kservices5/ServiceMenus/mount-iso.sh
