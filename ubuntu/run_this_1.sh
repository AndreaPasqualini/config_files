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


echo 'Installing theming packages via APT'
apt install -y \
arc-theme \
numix-theme \
breeze-gtk-theme \
papirus-icon-theme \
suru-icon-theme \
qt5-style-plugins \
qt5ct

echo 'Installing fonts via APT'
apt install -y \
fonts-cantarell \
fonts-dejavu \
fonts-f500 \
fonts-firacode \
fonts-noto \
fonts-noto-mono \
fonts-quattrocento \
fonts-roboto \
fonts-roboto-slab \
fonts-oxygen \
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
echo "QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment


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

echo 'Downloading Mendeley bibliography manager'
wget -qO ./ https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest


# Downloading the Conda system  ===============================================
echo 'Downloading the (mini)Conda installer'
wget -qP ~/Downloads/ https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh --show-progress


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