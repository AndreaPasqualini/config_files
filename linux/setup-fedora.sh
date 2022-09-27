mkdir $HOME/Git

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo dnf install neofetch tldr pdftk gnome-tweaks gnome-console powerline vim-powerline darktable inkscape libinput-devel meson ibm-plex-fonts-all cascadia-fonts-all google-noto-fonts-common dconf-editor systemd-devel

sudo dnf install gnome-extensions gnome-shell-extension-appindicator gnome-shell-extension-caffeine gnome-shell-extension-just-perfection gnome-shell-extension-native-window-placement

sudo dnf install texlive-scheme-basic texlive-cm-super texlive-cm-unicode texlive-biblatex texlive-biblatex-apa texlive-biblatex-apa6 texlive-apa texlive-apa6 texlive-apa7 texlive-appendix texlive-amsmath texlive-amsfonts texlive-etoolbox texlive-hyph-utf8 texlive-hyphen-english texlive-hyphen-italian texlive-babel texlive-babel-english texlive-babel-italian texlive-beamer texlive-beamertheme-metropolis texlive-beamertheme-focus texlive-fourier texlive-fancyhdr texlive-graphics texlive-pgf texlive-pgfplots texlive-plex texlive-latex-fonts texlive-lipsum texlive-listings texlive-mathtools texlive-mathastext texlive-paralist texlive-soul texlive-pdftricks texlive-pdftricks2 texlive-titlesec texlive-titling texlive-xcolor biber latexmk texlive-dvipng

sudo dnf install R-core R-core-devel libcurl-devel openssl-devel

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

sudo dnf config-manager --add-repo https://yum.repos.intel.com/mkl/setup/intel-mkl.repo
sudo rpm --import https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
sudo dnf install intel-mkl # or a specific version, e.g. intel-mkl-2020.0-088
