mkdir $HOME/Git

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install CLI programs
sudo dnf install neofetch tldr pdftk powerline vim-powerline

# Install GUI programs
sudo dnf install gnome-console gnome-tweaks dconf-editor solaar darktable inkscape

# Install fonts
sudo dnf install ibm-plex-fonts-all cascadia-fonts-all google-noto-fonts-common

# Install Gnome extensions
sudo dnf install gnome-extensions gnome-shell-extension-appindicator gnome-shell-extension-caffeine gnome-shell-extension-just-perfection gnome-shell-extension-native-window-placement

# Install subset of TeXlive distribution
sudo dnf install texlive-base texlive-collection-basic texlive-collection-binextra texlive-collection-plaingeneric texlive-collection-latex texlive-collection-latexrecommended texlive-collection-latexextra texlive-collection-fontsrecommended texlive-collection-fontsextra texlive-collection-mathscience texlive-collection-pictures texlive-collection-bibtexextra texlive-collection-publishers texlive-collection-langenglish texlive-collection-langitalian

# Install R
sudo dnf install R-core R-core-devel libcurl-devel openssl-devel libxml2-devel

# Install MKL
sudo dnf config-manager --add-repo https://yum.repos.intel.com/mkl/setup/intel-mkl.repo
sudo rpm --import https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
sudo dnf install intel-mkl # or a specific version, e.g. intel-mkl-2020.0-088

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

# Install libinput-config, to slow down two-finger scrolling on touchpad
sudo dnf install systemd-devel libinput-devel meson
echo 'scroll-factor=0.3' | sudo tee -a /etc/libinput.conf
cd $HOME/Git
git clone https://gitlab.com/warningnonpotablewater/libinput-config.git
cd libinput-config
meson build
cd build
ninja
sudo ninja install
cd $HOME

# Install btop
cd $HOME/Downloads
wget --quiet --show-progress https://github.com/aristocratos/btop/releases/download/v1.2.9/btop-x86_64-linux-musl.tbz
mkdir btop
tar xf ./btop-x86_64-linux-musl.tbz --directory=btop
cd btop
sudo make install
sudo make setuid
cd ..
rm ./btop/ -rf
rm ./btop-x86_64-linux-musl.tbz
cd $HOME
