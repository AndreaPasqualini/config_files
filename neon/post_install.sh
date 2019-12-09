#!/bin/bash

# Installing packages from APT
sudo apt install -y \
build-essential \
git \
curl

# Install Fira Code font family
sudo apt install -y \
fonts-firacode

# Install Libreoffice Writer and Calc
sudo apt install -y \
libreoffice-writer \
libreoffice-calc \
libreoffice-gtk3

# Install KDE system tools
sudo apt install -y \
filelight \
partitionmanager \
usb-creator-kde \
transmission-qt


# Getting rid of ugly snapd
sudo apt purge -y snapd


# Installing Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client


# Installing Intel's MKL
sudo bash ./mkl4deb.sh


# Installing R system, packages and dependencies
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
echo "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" | sudo tee /etc/apt/sources.list.d/cran.list
sudo apt update && sudo apt install -y r-base-core

sudo apt install -y \
libcurl4-openssl-dev \
libssl-dev \
libxml2-dev \
libudunits2-dev \
libgdal-dev


# Installing TeXlive system and Kile
sudo apt install -y \
texlive-base \
texlive-latex-base \
texlive-latex-recommended \
texlive-latex-extra \
texlive-xetex \
texlive-bibtex-extra \
texlive-fonts-recommended \
texlive-fonts-extra \
texlive-lang-english \
texlive-lang-italian \
texlive-pictures \
texlive-science \
texlive-pstricks \
latexmk \
kile


# Install Ruby, with Bundler and Jekyll
sudo apt install -y \
ruby \
ruby-dev

echo '# Install Ruby Gems to ~/.gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/.gems"' >> ~/.bashrc
echo 'export PATH="$HOME/.gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
gem install bundler jekyll


# Install Mozilla's Fira font family
cd ~/Downloads
git clone https://github.com/mozilla/Fira
sudo mkdir /usr/local/share/fonts/Fira
sudo cp -r ./Fira/ttf/* /usr/local/share/fonts/Fira/
sudo fc-cache -f
cd -


# Installing Stata 16
wget -q http://download.unibocconi.it/Software/Stata16Linux64.tar.gz -O ~/Downloads/Stata16.tar.gz --show-progress
mkdir ~/Downloads/stata16
rm tar -C ~/Downloads/stata16 -xvf ~/Downloads/Stata16.tar.gz
sudo mkdir /usr/local/Stata16
cd /usr/local/Stata16
sudo ~/Downloads/stata16/install  # hands off control to user
sudo ./stinit                     # hands off control to user
cd -
mkdir ~/.ado
sudo touch /usr/local/Stata16/profile.do
echo 'sysdir set PLUS "~/.stata16/ado/plus/"' | sudo tee -a /usr/local/Stata16/profile.do
echo 'sysdir set PERSONAL "~/.stata16/ado/personal/"' | sudo tee -a /usr/local/Stata16/profile.do
echo 'sysdir set OLDPLACE "~/.stata16/ado/"' | sudo tee -a /usr/local/Stata16/profile.do


# Installing pdftk from Ubuntu 17.10 packages
sudo bash pdftk_installer.sh


# Downloading DEB files
wget -q https://go.skype.com/skypeforlinux-64.deb -O ~/Downloads/skype.deb --show-progress
wget -q https://code.visualstudio.com/docs/?dv=linux64_deb -O ~/Downloads/vscode.deb --show-progress
wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5019-amd64.deb -O ~/Downloads/rstudio.deb --show-progress
wget -q https://github.com/shiftkey/desktop/releases/download/release-2.1.0-linux1/GitHubDesktop-linux-2.1.0-linux1.deb -O ~/Downloads/githubdesktop.deb --show-progress
wget -q https://zerkc.gitlab.io/whatsdesk/whatsdesk_0.2.18_amd64.deb -O ~/Downloads/whatsdesk.deb --show-progress
wget -q https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb -O ~/Downloads/dropbox.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/dolphin-megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega_dolphin_ext.deb --show-progress

cd ~/Downloads
sudo apt install -y \
./dropbox.deb \
./mega.deb \
./mega_dolphin_ext.deb \
./vscode.deb \
./skype.deb \
./rstudio.deb \
./githubdesktop.deb \
./whatsdesk.deb
cd -


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
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-tina/mint-backgrounds-tina_1.2_all.deb --show-progress
wget -qP ~/Downloads http://packages.linuxmint.com/pool/main/m/mint-backgrounds-tricia/mint-backgrounds-tricia_1.1_all.deb --show-progress
sudo dpkg -i ~/Downloads/mint-backgrounds-*.deb


# Tweak bash to use trueline fancy (requires a Nerd Font)
wget -qP ~/Downloads https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/FiraMono.zip --show-progress
unzip ~/Downloads/FiraMono.zip -P ~/Downloads/fura/
cd ~/Downloads/fura
rm *Windows*
rm !(*Mono.otf)
sudo mkdir /usr/local/share/fonts/Fura
sudo mv -r ./* /usr/local/share/fonts/Fura/
wget -q https://raw.githubusercontent.com/petobens/trueline/master/trueline.sh -O ~/.trueline.sh --show-progress
echo 'source ~/.trueline.sh' >> ~/.bashrc


# Remove all downloaded files upon successful completion of the operations above
sudo rm ~/Downloads/* -rf


# Remove unnecessary dependencies
sudo apt autoremove -y


# Rebooting for sanity
echo 'Rebooting in 10 seconds... [Ctrl+C to cancel]'
for i in {10..01}
do
	echo "$i"
	sleep 1
done
sudo shutdown -r now
