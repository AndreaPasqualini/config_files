mkdir $HOME/Git

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-modify --enable flathub

# Add RPMfusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate core

# Add/swap multimedia codecs with proprietary ones
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video

# Enable hardware acceleration drivers with AMD CPU/GPU
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld

# Install CLI programs
sudo dnf install -y fastfetch tldr pdftk btop

# Install Oh My Posh and make Bash use it
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d $HOME/.local/bin
echo '' >> $HOME/.bashrc
echo '# Make Bash use Oh My Posh' >> $HOME/.bashrc
echo 'eval "$(oh-my-posh init bash --config '$HOME/.cache/themes/blue-owl.omp.json')"' >> $HOME/.bashrc

# Install GUI programs
sudo dnf install -y gnome-console gnome-tweaks dconf-editor gnome-extensions-app solaar darktable inkscape
flatpak install -y flathub de.haeckerfelix.Fragments nl.hjdskes.gcolor3 md.obsidian.Obsidian org.telegram.desktop org.signal.Signal io.github.mimbrero.WhatsAppDesktop com.spotify.Client

# Install Gnome extensions
sudo dnf install -y gnome-extensions-app gnome-shell-extension-appindicator gnome-shell-extension-caffeine gnome-shell-extension-just-perfection gnome-shell-extension-mediacontrols

# Install subset of TeXlive distribution
sudo dnf install -y texlive-base texlive-collection-basic texlive-collection-binextra texlive-collection-plaingeneric texlive-collection-latex texlive-collection-latexrecommended texlive-collection-latexextra texlive-collection-fontsrecommended texlive-collection-fontsextra texlive-collection-mathscience texlive-collection-pictures texlive-collection-bibtexextra texlive-collection-publishers texlive-collection-langenglish texlive-collection-langitalian

# Install R
sudo dnf install -y R-core R-core-devel libcurl-devel openssl-devel libxml2-devel

# Install MKL
# sudo dnf config-manager --add-repo https://yum.repos.intel.com/mkl/setup/intel-mkl.repo
# sudo rpm --import https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
# sudo dnf install -y intel-mkl # or a specific version, e.g. intel-mkl-2020.0-088

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install -y code

# Install libinput-config, to slow down two-finger scrolling on touchpad
sudo dnf install -y systemd-devel libinput-devel meson
echo 'scroll-factor=0.4' | sudo tee -a /etc/libinput.conf
cd $HOME/Git
git clone https://gitlab.com/warningnonpotablewater/libinput-config.git
cd libinput-config
meson build
cd build
ninja
sudo ninja install
cd $HOME
