#!/bin/bash

# Install Communitheme from Snap store
sudo snap install communitheme


# Fixing unwanted snaps and installing Tweak Tool
sudo snap remove \
gnome-system-monitor \
gnome-logs \
gnome-calculator \
gnome-characters

sudo apt install -y \
baobab \
vlc \
simple-scan \
gnome-system-monitor \
gnome-logs \
gnome-calculator \
gnome-characters \
gnome-sudoku \
gnome-mines \
gnome-weather \
chrome-gnome-shell \
gnome-tweaks

sudo apt install -y \
gdebi \
synaptic \
usb-creator-gtk \
transmission-gtk \
qt5-style-plugins


# Fix QT5 widget theme in applications
echo "export QT_QPA_PLATFORMTHEME=gtk2" | sudo tee -a /etc/environment


# Modifying general Gnome settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/linuxmint-tessa/bfantinatti_small_leaves.jpg'
gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface cursor-size 32
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'<Super>T'"


# Modfying Nautilus settings
gsettings set org.gnome.nautilus.preferences default-folder-viewer "'list-view'"
gsettings set org.gnome.nautilus.preferences search-view "'list-view'"
gsettings set org.gnome.nautilus.preferences search-filter-time-type "'last_modified'"
gsettings set org.gnome.nautilus.preferences default-visible-columns "['name', 'size', 'type', 'date_modified']"


# Modifying Terminal settings
gsettings set org.gnome.terminal.legacy theme-variant "'dark'"


# Modifying Gedit settings
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor display-overview-map true
gsettings set org.gnome.gedit.preferences.editor display-right-margin true
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor scheme "'tango'"
gsettings set org.gnome.gedit.preferences.editor tabs-size 4
gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode "'word'"


# Setting the Tetra GTK theme (https://github.com/hrdwrrsk/tetra-gtk-theme)

# Checking dependencies
sudo apt install -y sassc bc inkscape optipng papirus-icon-theme

# Downloading assets and installing
cd ~/Downloads
git clone https://github.com/hrdwrrsk/tetra-gtk-theme.git
sudo ./tetra-gtk-theme/install.sh

sudo apt purge -y sassc bc
rm -rf ./tetra-gtk-theme

# Fixing height and font size in Gnome shell top bar for my laptop's screen
sudo sed -i.bak s/'  height: 28px'/'  height: 40px'/g /usr/share/themes/Tetra/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  height: 28px'/'  height: 40px'/g /usr/share/themes/Tetra-dark/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  height: 28px'/'  height: 40px'/g /usr/share/themes/Tetra-light/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  font-size: 9pt'/'  font-size: 11pt'/ /usr/share/themes/Tetra/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  font-size: 9pt'/'  font-size: 11pt'/ /usr/share/themes/Tetra-dark/gnome-shell/gnome-shell.css
sudo sed -i.bak s/'  font-size: 9pt'/'  font-size: 11pt'/ /usr/share/themes/Tetra-light/gnome-shell/gnome-shell.css

# Setting the theme
gsettings set org.gnome.desktop.interface gtk-theme 'Tetra'
gsettings set org.gnome.desktop.interface icon-theme 'ePapirus'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 11'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Bold 11'
