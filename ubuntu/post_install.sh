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
gnome-sudoku \
gnome-mines \
gnome-calendar \
gnome-todo \
chrome-gnome-shell \
gnome-tweaks \
gnome-shell-extension-mediaplayer \
gnome-shell-extension-system-monitor \
gnome-shell-extension-weather


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

sudo apt install -y npm


# Fix QT5 widget theme in applications
echo "export QT_QPA_PLATFORMTHEME=qt5ct" | sudo tee -a /etc/environment


# Installing Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client


# Downloading DEB files
wget -q https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2018.11.28_amd64.deb -O ~/Downloads/dropbox.deb --show-progress
wget -q https://global.download.synology.com/download/Tools/CloudStationDrive/4.2.8-4421/Ubuntu/Installer/x86_64/synology-cloud-station-drive-4421.x86_64.deb -O ~/Downloads/synologycloud.deb --show-progress
wget -q https://telegram.org/dl/desktop/linux -O ~/Downloads/telegram.tar.xz --show-progress
wget -q https://go.skype.com/skypeforlinux-64.deb -O ~/Downloads/skype.deb --show-progress
wget -q https://go.microsoft.com/fwlink/?LinkID=760868 -O ~/Downloads/vscode.deb --show-progress
wget -q https://steamcdn-a.akamaihd.net/client/installer/steam.deb -O ~/Downloads/steam.deb --show-progress
wget -q https://github.com/shiftkey/desktop/releases/download/release-1.5.1-linux2/GitHubDesktop-linux-1.5.1-linux2.deb -O ~/Downloads/githubdesktop.deb --show-progress
sudo gdebi -n ~/Downloads/dropbox.deb
sudo gdebi -n ~/Downloads/synologycloud.deb
sudo gdebi -n ~/Downloads/vscode.deb
sudo gdebi -n ~/Downloads/skype.deb
sudo gdebi -n ~/Downloads/steam.deb
sudo gdebi -n ~/Downloads/githubdesktop.deb
tar xf ~/Downloads/telegram.tar.xz -C ~/Downloads
~/Downloads/Telegram/Telegram

# Downloading Linux Mint backgrounds
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-maya/mint-backgrounds-maya_1.5_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-nadia/mint-backgrounds-nadia_1.4_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-olivia/mint-backgrounds-olivia_1.7_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-petra/mint-backgrounds-petra_1.7_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-qiana/mint-backgrounds-qiana_1.5_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-rafaela/mint-backgrounds-rafaela_1.2_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-rebecca/mint-backgrounds-rebecca_1.5_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-retro/mint-backgrounds-retro_1.3_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-rosa/mint-backgrounds-rosa_1.2_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-sarah/mint-backgrounds-sarah_1.1_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-serena/mint-backgrounds-serena_1.1_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-sonya/mint-backgrounds-sonya_1.1_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-sylvia/mint-backgrounds-sylvia_1.2_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-tara/mint-backgrounds-tara_1.1_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-tessa/mint-backgrounds-tessa_1.1_all.deb --show-progress
sudo dpkg -i ~/Downloads/mint-backgrounds-*.deb


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
unzip -jq ~/Downloads/fira.zip ~/Downloads/Fira/
sudo mv ~/Downloads/Fira /usr/share/fonts/truetype/Fira/
sudo mv ~/Downloads/RobotoMono /usr/share/fonts/truetype/RobotoMono/
sudo chown -R root:root /usr/share/fonts/truetype/Fira/
sudo chown -R root:root /usr/share/fonts/truetype/RobotoMono/
sudo fc-cache -v


# Modifying Gnome settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrouds/linuxmint-tessa/bfantinatti_small_leaves.jpg'
gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface cursor-size 32
gsettings set org.gnome.desktop.interface gtk-theme 'Materia-light-compact'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Fira Code 11'
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans Bold 11'
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


# Remove all downloaded files upon successful completion of the operations above
sudo rm ~/Downloads/* -rf
sudo shutdown -r now
