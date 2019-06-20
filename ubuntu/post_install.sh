#!/bin/bash

# Update and Upgrade
sudo apt update && sudo apt upgrade -y


# Installing packages from APT
sudo apt install -y \
git \
build-essential

sudo apt install -y \
fonts-noto \
fonts-noto-mono \
fonts-firacode

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
texlive-pstricks

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

sudo apt install -y libreoffice

# Fixing unwanted snaps and installing Tweak Tool
sudo snap remove \
gnome-system-monitor \
gnome-logs \
gnome-calculator \
gnome-characters

sudo apt install -y \
baobab \
vlc \
gnome-system-monitor \
gnome-logs \
gnome-calculator \
gnome-characters \
gnome-sudoku \
gnome-mines \
gnome-weather \
chrome-gnome-shell \
gnome-shell-extension-remove-dropdown-arrows \
gnome-tweaks

sudo apt install -y \
gdebi \
usb-creator-gtk \
transmission-gtk \
qt5-style-plugins


# Fix QT5 widget theme in applications
echo "export QT_QPA_PLATFORMTHEME=gtk2" | sudo tee -a /etc/environment


# Installing Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client


# Installing R system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
echo "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" | sudo tee /etc/apt/sources.list.d/cran.list
sudo apt update && sudo apt install -y r-base-core


# Downloading DEB files
wget -q https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2018.11.28_amd64.deb -O ~/Downloads/dropbox.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/nautilus-megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega_nautilus_ext.deb --show-progress
wget -q https://telegram.org/dl/desktop/linux -O ~/Downloads/telegram.tar.xz --show-progress
wget -q https://go.skype.com/skypeforlinux-64.deb -O ~/Downloads/skype.deb --show-progress
wget -q https://go.microsoft.com/fwlink/?LinkID=760868 -O ~/Downloads/vscode.deb --show-progress
wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb -O ~/Downloads/rstudio.deb --show-progress
wget -q https://github.com/shiftkey/desktop/releases/download/release-2.0.4-linux1/GitHubDesktop-linux-2.0.4-linux1.deb -O ~/Downloads/githubdesktop.deb --show-progress
wget -q https://gitlab.com/zerkc/whatsdesk/raw/master/page/whatsdesk_0.2.18_amd64.deb?inline=false -O ~/Downloads/whatsdesk.deb --show-progress
sudo gdebi -n ~/Downloads/dropbox.deb
sudo gdebi -n ~/Downloads/mega.deb
sudo gdebi -n ~/Downloads/mega_nautilus_ext.deb
sudo gdebi -n ~/Downloads/vscode.deb
sudo gdebi -n ~/Downloads/skype.deb
sudo gdebi -n ~/Downloads/rstudio.deb
sudo gdebi -n ~/Downloads/githubdesktop.deb
sudo gdebi -n ~/Downloads/whatsdesk.deb
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
git clone https://github.com/apsql/slate-for-oneplus.git
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
sudo mv ~/Downloads/Fira/* /usr/share/fonts/truetype/Fira/
sudo mv ~/Downloads/RobotoMono/* /usr/share/fonts/truetype/RobotoMono/
sudo mv ~/Downloads/slate-for-oneplus/slate/* /usr/share/fonts/truetype/Slate/
sudo chown -R root:root /usr/share/fonts/truetype/Fira/
sudo chown -R root:root /usr/share/fonts/truetype/RobotoMono/
sudo chown -R root:root /usr/share/fonts/truetype/Slate
sudo fc-cache -v


# Modifying general Gnome settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/linuxmint-tessa/bfantinatti_small_leaves.jpg'
gsettings set org.gnome.desktop.interface clock-show-date true
# gsettings set org.gnome.desktop.interface cursor-size 32
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "'<Super>t'"


# Modfying Nautilus settings
gsettings set org.gnome.nautilus.preferences default-folder-viewer "'list-view'"
gsettings set org.gnome.nautilus.preferences search-view "'list-view'"
gsettings set org.gnome.nautilus.preferences search-filter-time-type "'last_modified'"
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'type', 'date_modified']"


# Modifying Terminal settings
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant "'dark'"


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
git clone https://github.com/hrdwrrsk/adementary-theme.git
sudo ./adementary-theme/install.sh

sudo apt purge -y sassc bc
sudo apt autoremove -y
rm -rf ./adementary-theme

# Fixing height and font size in Gnome shell top bar for my laptop's screen
sudo cp /usr/share/themes/Adementary/gnome-shell/gnome-shell.css /usr/share/themes/Adementary/gnome-shell/gnome-shell.css.bak
sudo cp /usr/share/themes/Adementary-light/gnome-shell/gnome-shell.css /usr/share/themes/Adementary-light/gnome-shell/gnome-shell.css.bak
sudo cp /usr/share/themes/Adementary-dark/gnome-shell/gnome-shell.css /usr/share/themes/Adementary-dark/gnome-shell/gnome-shell.css.bak
sudo sed s/'  height: 28px'/'  height: 36px'/g /usr/share/themes/Adementary/gnome-shell/gnome-shell.css
sudo sed s/'  height: 28px'/'  height: 36px'/g /usr/share/themes/Adementary-light/gnome-shell/gnome-shell.css
sudo sed s/'  height: 28px'/'  height: 36px'/g /usr/share/themes/Adementary-dark/gnome-shell/gnome-shell.css
sudo sed s/'  font-size: 9pt'/'  font-size: 10pt'/ /usr/share/themes/Adementary/gnome-shell/gnome-shell.css
sudo sed s/'  font-size: 9pt'/'  font-size: 10pt'/ /usr/share/themes/Adementary-light/gnome-shell/gnome-shell.css
sudo sed s/'  font-size: 9pt'/'  font-size: 10pt'/ /usr/share/themes/Adementary-dark/gnome-shell/gnome-shell.css
sudo sed s/'  font-family: Noto Sans, Cantarell, Sans-Serif'/'  font-family: Roboto, Noto Sans, Cantarell, Sans-Serif'/ /usr/share/themes/Adementary/gnome-shell/gnome-shell.css
sudo sed s/'  font-family: Noto Sans, Cantarell, Sans-Serif'/'  font-family: Roboto, Noto Sans, Cantarell, Sans-Serif'/ /usr/share/themes/Adementary-light/gnome-shell/gnome-shell.css
sudo sed s/'  font-family: Noto Sans, Cantarell, Sans-Serif'/'  font-family: Roboto, Noto Sans, Cantarell, Sans-Serif'/ /usr/share/themes/Adementary-dark/gnome-shell/gnome-shell.css

# Setting the theme
gsettings set org.gnome.desktop.interface gtk-theme 'Adementary'
gsettings set org.gnome.desktop.interface icon-theme 'ePapirus'
gsettings set org.gnome.desktop.interface font-name 'Roboto 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 10'
gsettings set org.gnome.desktop.interface document-font-name 'Roboto 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Roboto Medium 11'


# Remove all downloaded files upon successful completion of the operations above
sudo rm ~/Downloads/* -rf

echo 'Rebooting in 10 seconds... [Ctrl+C to cancel]'
for i in {10..01}
do
	echo "$i"
	sleep 1
done
sudo shutdown -r now
