#!/bin/bash

if [[ $EUID -ne 0 ]]; then
 echo "This script must be run as root"
 exit 1
fi


# Update and Upgrade  =========================================================
echo "Updating and Upgrading"
apt update && apt upgrade -y


# Installing packages from APT  ===============================================
echo 'Installing general utilities & tools'
apt install -y \
git \
build-essential \
gdebi \
synaptic


echo 'Installing theming packages via APT'
apt install -y \
breeze-gtk-theme \
materia-gtk-theme \
papirus-icon-theme \
qt5-style-plugins \
qt5ct

echo 'Installing fonts via APT'
apt install -y \
fonts-firacode \
fonts-noto-mono \
fonts-hack \
fonts-dejavu \
fonts-noto \
fonts-roboto \
fonts-roboto-slab \
ttf-mscorefonts-installer

echo 'Installing TeXlive packages via APT'
apt install -y \
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

echo 'Installing Python3 packages via APT'
apt install -y \
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


# Fix QT5 widget theme in applications  =======================================
echo "export QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment


# Installing .deb files from the internet  ====================================
echo 'Installing Spotify'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list
apt update && apt install spotify-client

