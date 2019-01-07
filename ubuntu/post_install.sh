#!/bin/bash

# Update and Upgrade
sudo apt update && sudo apt upgrade -y


# Install Communitheme from Snap store
sudo snap install communitheme

# Fixing unwanted snaps and installing Tweak Tool
sudo snap remove \
gnome-system-monitor \
gnome-logs \
gnome-calculator \
gnome-characters

sudo apt install -y \
gnome-system-monitor \
gnome-logs \
gnome-calculator \
gnome-characters \
gnome-tweaks

# Installing packages from APT
sudo apt install -y \
git \
build-essential \
gdebi \
synaptic

sudo apt install -y \
breeze-gtk-theme \
materia-gtk-theme \
papirus-icon-theme \
qt5-style-plugins \
qt5ct

sudo apt install -y \
fonts-firacode \
fonts-noto-mono \
fonts-hack \
fonts-dejavu \
fonts-noto \
fonts-roboto \
fonts-roboto-slab \
ttf-mscorefonts-installer

sudo apt install -y \
texlive-base \
texlive-bibtex-extra \
texlive-fonts-recommended \
texlive-fonts-extra \
texlive-lang-english \
texlive-lang-italian \
texlive-latex-base \
texlive-pictures \
texlive-science \
texlive-pstricks \
texstudio

sudo apt install -y \
python3-numpy \
python3-scipy \
python3-matplotlib \
python3-sympy \
python3-pandas \
python3-numba \
python3-xlrd \
ipython3 \
jupyter \
jupyter-notebook \
spyder3


# Fix QT5 widget theme in applications
echo "export QT_QPA_PLATFORMTHEME=qt5ct" | sudo tee -a /etc/environment


# Installing Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client


# Downloading DEB files
wget -q https://telegram.org/dl/desktop/linux -O ~/Downloads/telegram.tar.xz --show-progress
wget -q https://go.skype.com/skypeforlinux-64.deb -O ~/Downloads/skype.deb --show-progress
wget -q https://go.microsoft.com/fwlink/?LinkID=760868 -O ~/Downloads/vscode.deb --show-progress
wget -q https://steamcdn-a.akamaihd.net/client/installer/steam.deb -O ~/Downloads/steam.deb --show-progress
wget -q https://github.com/shiftkey/desktop/releases/download/release-1.5.1-linux2/GitHubDesktop-linux-1.5.1-linux2.deb -O ~/Downloads/githubdesktop.deb --show-progress
gdebi -n ~/Downloads/vscode.deb
gdebi -n ~/Downloads/skype.deb
gdebi -n ~/Downloads/steam.deb
gdebi -n ~/Downloads/githubdesktop.deb


# Downloading fonts found on the web
mkdir ~/Downloads/Fira
mkdir ~/Downloads/RobotoMono
wget -q https://github.com/mozilla/Fira/archive/4.202.zip -O ~/Downloads/fira.zip --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-Bold.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-BoldItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-Italic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-Light.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-LightItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-Medium.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-MediumItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-Regular.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-Thin.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/raw/master/apache/robotomono/RobotoMono-ThinItalic.ttf --show-progress


# Extracting ZIPs and putting fonts to /usr/share/fonts/truetype/
unzip -jq ~/Downloads/fira.zip ~/Downloads/Fira/
sudo mv ~/Downloads/Fira /usr/share/fonts/truetype/Fira/
sudo mv ~/Downloads/RobotoMono /usr/share/fonts/truetype/RobotoMono/
sudo chown -R root:root /usr/share/fonts/truetype/Fira/
sudo chown -R root:root /usr/share/fonts/truetype/RobotoMono/


# Rebuilding font cache
sudo fc-cache -v


# Modifying Gnome settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
