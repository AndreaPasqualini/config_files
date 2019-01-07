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
build-essential


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
echo 'Downloading Google Chrome'
wget -qP ./ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --show-progress
# dpkg -i ./google-chrome-stable_current_amd64.deb
# apt-get -f install

echo 'Installing Sublime Text 3'
wget -qO ./ https://download.sublimetext.com/sublimehq-pub.gpg |
apt-key add -
apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" |
tee /etc/apt/sources.list.d/sublime-text.list
apt update && apt install sublime-text

echo 'Installing Spotify'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt update && apt install spotify-client


# Downloading fonts found on the web  =========================================
echo 'Downloading additional fonts'
mkdir ~/Downloads/SourceCodePro
mkdir ~/Downloads/Fira
mkdir ~/Downloads/RobotoMono

wget -qP - ~/Downloads/ https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip scp.zip --show-progress
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


# Extracting ZIPs and putting fonts to /usr/share/fonts/truetype/  ============
cd ~/Downloads
echo 'Installing downloaded fonts to /usr/share/fonts/truetype/'
unzip -jq scp.zip ./SourceCodePro/
unzip -jq fira.zip ./Fira/

sudo mv ./SourceCodePro /usr/share/fonts/truetype/SourceCodePro/
sudo mv ./Fira /usr/share/fonts/truetype/Fira/
sudo mv ./RobotoMono /usr/share/fonts/truetype/RobotoMono/

cd ~


# Rebuilding font cache  ======================================================
sudo fc-cache -v
