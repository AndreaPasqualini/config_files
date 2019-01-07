#!/bin/bash

# Update and Upgrade
sudo apt update && sudo apt upgrade -y


# Install Communitheme from Snap store
sudo snap install communitheme


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
sudo apt update && sudo apt install spotify-client


wget -qP ~/Downloads https://telegram.org/dl/desktop/linux --show-progress

wget -qP ~/Downloads https://go.microsoft.com/fwlink/?LinkID=760868 --show-progress
# Downloading DEB files

wget -qP ~/Downloads https://steamcdn-a.akamaihd.net/client/installer/steam.deb --show-progress


# Downloading fonts found on the web
mkdir ~/Downloads/Fira
mkdir ~/Downloads/RobotoMono

wget -qP - ~/Downloads/ https://github.com/mozilla/Fira/archive/4.202.zip fira.zip --show-progress

wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Bold.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-BoldItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Italic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Light.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-LightItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Medium.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-MediumItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Regular.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Thin.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-ThinItalic.ttf --show-progress


# Extracting ZIPs and putting fonts to /usr/share/fonts/truetype/
cd ~/Downloads
unzip -jq fira.zip ./Fira/

sudo mv ./SourceCodePro /usr/share/fonts/truetype/SourceCodePro/
sudo mv ./Fira /usr/share/fonts/truetype/Fira/
sudo mv ./RobotoMono /usr/share/fonts/truetype/RobotoMono/

cd ~


# Rebuilding font cache  ======================================================
sudo fc-cache -v



# Modifying Gnome settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
