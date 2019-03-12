#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt purge -y \
thunderbird \
hexchat \
rhythmbox \
xplayer \
onboard

sudo apt autoremove -y

sudo apt install -y \
fonts-firacode \
fonts-noto-mono \
fonts-hack \
fonts-dejavu \
fonts-noto \
fonts-roboto \
fonts-roboto-slab

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

sudo apt install -y \
spotify-client \
skypeforlinux \
telegram-desktop \
dropbox \
nemo-dropbox \
sqlitebrowser

wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/nautilus-megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega_nautilus_ext.deb --show-progress
wget -q https://go.microsoft.com/fwlink/?LinkID=760868 -O ~/Downloads/vscode.deb --show-progress
wget -q https://github.com/shiftkey/desktop/releases/download/release-1.6.3-linux1/GitHubDesktop-linux-1.6.3.deb -O ~/Downloads/githubdesktop.deb --show-progress
wget -q https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O ~/Downloads/teamviewer.deb --show-progress
sudo gdebi -n ~/Downloads/mega.deb
sudo gdebi -n ~/Downloads/mega_nautilus_ext.deb
sudo gdebi -n ~/Downloads/vscode.deb
sudo gdebi -n ~/Downloads/githubdesktop.deb
sudo gdebi -n ~/Downloads/teamviewer.deb

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

# Setting xed preferences
gsettings set org.x.editor.preferences.editor auto-indent true
gsettings set org.x.editor.preferences.editor bracket-matching true
gsettings set org.x.editor.preferences.editor display-line-numbers true
gsettings set org.x.editor.preferences.editor display-right-margin true
gsettings set org.x.editor.preferences.editor editor-font "'Noto Mono 11'"
gsettings set org.x.editor.preferences.editor ensure-trailing-newline true
gsettings set org.x.editor.preferences.editor highlight-current-line true
gsettings set org.x.editor.preferences.editor insert-spaces true
gsettings set org.x.editor.preferences.editor prefer-dark-theme true
gsettings set org.x.editor.preferences.editor right-margin-position 80
gsettings set org.x.editor.preferences.editor tabs-size 2
gsettings set org.x.editor.preferences.ui minimap-visible true
gsettings set org.x.editor.preferences.ui statusbar-visible true

# Setting Nemo preferences
gsettings set org.nemo.preferences close-device-view-on-device-eject true
gsettings set org.nemo.preferences context-menus-show-all-actions false
gsettings set org.nemo.preferences date-format "'informal'"
gsettings set org.nemo.preferences default-folder-viewer "'list-view'"
gsettings set org.nemo.preferences default-sort-order "'type'"
gsettings set org.nemo.preferences ignore-view-metadata true
gsettings set org.nemo.preferences show-computer-icon-toolbar true
gsettings set org.nemo.preferences show-home-icon-toolbar true
gsettings set org.nemo.preferences show-new-folder-icon-toolbar true
gsettings set org.nemo.preferences show-open-in-terminal-toolbar true
gsettings set org.nemo.preferences show-reload-icon-toolbar true
gsettings set org.nemo.desktop desktop-layout "'false::false'"
gsettings set org.nemo.desktop font "'Noto Sans 11'"
gsettings set org.nemo.plugins disabled-actions "['add-desklets.nemo-action', 'send-by-mail.nemo-action']"

# Setting custom keybindings (eradicating traces of <Control><Alt> bindings)
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-up "['<Super><Shift><Alt>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-down "['<Super><Shift><Alt>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-left "['<Super><Shift><Alt>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-right "['<Super><Shift><Alt>Right']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-up "['']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-down "['']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-left "['']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-right "['']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-panels "['<Super>Tab']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super><Control>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super><Control>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left "['<Super><Control>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right "['<Super><Control>Right']"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-recording "['<Super><Control><Shift>r']"
gsettings set org.cinnamon.desktop.keybindings looking-glass-keybinding "['']"
gsettings set org.cinnamon.desktop.keybindings.media-keys terminal "['<Super>t']"
gsettings set org.cinnamon.desktop.keybindings.media-keys screen-saver "['<Super>l']"
gsettings set org.cinnamon.desktop.keybindings.media-keys logout "['<Super><Control>Delete']"
gsettings set org.cinnamon.desktop.keybindings.media-keys shutdown "['<Super><Control>End']"
gsettings set org.cinnamon.desktop.keybindings.media-keys restart-cinnamon "['<Super><Control>Escape']"

# Removing unused dependencies
sudo apt autoremove -y

# Rebooting for peace
echo 'Rebooting in 10 seconds... [Ctrl+C to cancel]'
for i in {10..01}
do
	echo "$i"
	sleep 1
done
sudo shutdown -r now

