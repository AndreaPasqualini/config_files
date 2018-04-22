#!/bin/bash

if [[ $EUID -ne 0 ]]; then
 echo "This script must be run as root"
 exit 1
fi

# Update and Upgrade  =========================================================
echo "Updating and Upgrading"
apt update && apt upgrade -y

# Installing packages from APT  ===============================================
echo 'Installing packages from APT'
apt install -y \
arc-theme \
numix-theme \
bluebird-gtk-theme \
breeze-gtk-theme \
greybird-gtk-theme \
faba-icon-theme \
faenza-icon-theme \
moka-icon-theme \
numix-icon-theme \
papirus-icon-theme \
suru-icon-theme \
oxygen-cursor-theme \
oxygen-cursor-theme-extra \
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
p7zip-full \
ttf-mscorefonts-installer


# Downloading and installing stuff from the internet  =========================
cd ~/Downloads


# Installing .deb files from the internet  ====================================
echo 'Installing Google Chrome'
wget -qP ./ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ./google-chrome-stable_current_amd64.deb
apt-get -f install

echo 'Installing Sublime Text 3'
wget -qO - ./ https://download.sublimetext.com/sublimehq-pub.gpg |
apt-key add -
apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" |
tee /etc/apt/sources.list.d/sublime-text.list
apt update && apt install sublime-text


# Downloading the Conda system  ================================================
echo 'Downloading the (mini)Conda installer'
wget -P ./ https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh


# Downloading fonts found on the web  ==========================================
echo 'Downloading additional fonts'
wget -qP - ./ https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip scp.zip
wget -qP - ./ https://github.com/mozilla/Fira/archive/4.202.zip fira.zip

mkdir ./RobotoMono/
cd ./RobotoMono/
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Bold.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-BoldItalic.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Italic.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Light.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-LightItalic.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Medium.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-MediumItalic.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Regular.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Thin.ttf
wget -qP ./ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-ThinItalic.ttf
