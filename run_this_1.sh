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


# Installing .deb files from the internet  ====================================
echo 'Installing Google Chrome'
wget -qP ./ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --show-progress
dpkg -i ./google-chrome-stable_current_amd64.deb
apt-get -f install

echo 'Installing Sublime Text 3'
wget -qO - ./ https://download.sublimetext.com/sublimehq-pub.gpg |
apt-key add -
apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" |
tee /etc/apt/sources.list.d/sublime-text.list
apt update && apt install sublime-text


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


# Extracting ZIPs and putting fonts to /usr/share/fonts/  =====================
cd ~/Downloads
echo 'Installing downloaded fonts to /usr/share/fonts/'
unzip -jq scp.zip ./SourceCodePro/
unzip -jq fira.zip ./Fira/

sudo mv ./SourceCodePro /usr/share/fonts/SourceCodePro/
sudo mv ./Fira /usr/share/fonts/Fira/
sudo mv ./RobotoMono /usr/share/fonts/RobotoMono/
