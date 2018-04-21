#!/bin/bash

if [[ $EUID -ne 0 ]]; then
 echo "This script must be run as root"
 exit 1
else
 # Update and Upgrade  ========================================================
 echo "Updating and Upgrading"
 apt update && apt upgrade -y
fi

# Installing packages from APT  ===============================================
echo 'Installing GTK themes'
apt install -y arc-theme numix-theme bluebird-gtk-theme breeze-gtk-theme greybird-gtk-theme

echo 'Installing icon themes'
apt install -y faba-icon-theme faenza-icon-theme moka-icon-theme numix-icon-theme papirus-icon-theme suru-icon-theme

echo 'Installing cursor themes'
apt install -y oxygen-cursor-theme oxygen-cursor-theme-extra

echo 'Installing fonts'
apt install -y fonts-cantarell fonts-dejavu fonts-f500 fonts-firacode fonts-noto fonts-noto-mono fonts-quattrocento fonts-roboto fonts-roboto-slab fonts-oxygen

echo 'Installing TeX live system'
apt install -y texlive-base texlive-bibtex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-english texlive-lang-italian texlive-latex-base texlive-pictures texlive-science texlive-pstricks

echo 'Installing 7z'
apt install p7zip-full

echo 'Installing MS fonts'
apt install -y ttf-mscorefonts-installer


# Installing .deb files from the internet  ====================================
echo 'Installing Google Chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt-get -f install

echo 'Installing Sublime Text 3'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt update && apt install sublime-text


# Installing the Conda system  ================================================
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh ./Miniconda3-latest-Linux-x86_64.sh

# Installing fonts found on the web  ==========================================
echo 'Installing the Source Code Pro TTF files to /usr/share/fonts/SourceCodePro/'
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip | 7z x

echo 'Installing the Fira TTF files to /usr/share/fonts/Fira/'
wget https://github.com/mozilla/Fira/archive/4.202.zip | 7z x

echo 'Installing the Roboto Mono TTF files to /usr/share/fonts/RobotoMono/'
mkdir ./RobotoMono/
cd ./RobotoMono/
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Bold.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-BoldItalic.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Italic.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Light.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-LightItalic.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Medium.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-MediumItalic.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Regular.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Thin.ttf
wget https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-ThinItalic.ttf
