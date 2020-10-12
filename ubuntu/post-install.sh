# Remove Snap system
sudo apt autoremove -y snapd

# Initial cleanup and update
sudo apt update
sudo apt upgrade -y

# Install basic tooling
sudo apt install -y neofetch tty-clock htop lolcat figlet toilet ranger vim curl wget build-essential git pdftk

# Install GUI utilities
sudo apt install -y baobab totem gnome-tweaks chrome-gnome-shell usb-creator-gtk

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

# Install LibreOffice
sudo apt install -y libreoffice-writer libreoffice-calc libreoffice-gtk3

# Install TeXlive system
sudo apt install -y texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-xetex texlive-bibtex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-english texlive-lang-italian texlive-pictures texlive-science texlive-pstricks latexmk dvipng

# Install Ruby system
sudo apt install -y ruby ruby-dev
echo '# Install Ruby Gems to ~/.gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/.gems"' >> ~/.bashrc
echo 'export PATH="$HOME/.gems/bin:$PATH"' >> ~/.bashrc

# Fix (most) QT apps look
sudo apt install -y qt5-gtk2-platformtheme
echo 'QT_QPA_PLATFORMTHEME=gtk2' | sudo tee -a /etc/environment
