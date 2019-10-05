#!/bin/bash

# Installing packages from APT
sudo apt install -y \
build-essential

sudo apt install -y \
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
texlive-pstricks \
latexmk

sudo apt install -y \
python3-numpy \
python3-scipy \
python3-matplotlib \
python3-sympy \
python3-pandas \
python3-numba \
python3-xlrd \
python3-bs4 \
python3-selenium \
ipython3 \
jupyter \
jupyter-notebook \
spyder3 \
firefox-geckodriver

sudo apt install -y \
libreoffice-calc \
libreoffice-gtk3

sudo apt install -y \
filelight \
partitionmanager \
usb-creator-kde \
transmission-qt


# Getting rid of ugly snapd
sudo apt purge -y snap


# Installing Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client


# Installing R system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
echo "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" | sudo tee /etc/apt/sources.list.d/cran.list
sudo apt update && sudo apt install -y r-base-core


# Downloading DEB files
wget -q https://go.skype.com/skypeforlinux-64.deb -O ~/Downloads/skype.deb --show-progress
wget -q https://code.visualstudio.com/docs/?dv=linux64_deb -O ~/Downloads/vscode.deb --show-progress
wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5001-amd64.deb -O ~/Downloads/rstudio.deb --show-progress
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
cd ~


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
sudo dpkg -i ~/Downloads/mint-backgrounds-*.deb


# Tweak bash to use trueline fancy (requires a Nerd Font)
wget -q https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf -O ~/Downloads/hack_nf_regular.ttf
wget -q https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete%20Mono.ttf -O ~/Downloads/hack_nf_italic.ttf
wget -q https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete%20Mono.ttf -O ~/Downloads/hack_nf_bold.ttf
wget -q https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete%20Mono.ttf -O ~/Downloads/hack_nf_bolditalic.ttf
sudo mkdir /usr/local/share/fonts/hack_nf
sudo mv ~/Downloads/hack_nf_regular.ttf /usr/local/share/fonts/hack_nf/hack_nf_regular.ttf
sudo mv ~/Downloads/hack_nf_italic.ttf /usr/local/share/fonts/hack_nf/hack_nf_italic.ttf
sudo mv ~/Downloads/hack_nf_bold.ttf /usr/local/share/fonts/hack_nf/hack_nf_bold.ttf
sudo mv ~/Downloads/hack_nf_bolditalic.ttf /usr/local/share/fonts/hack_nf/hack_nf_bolditalic.ttf
sudo chown root:root /usr/local/share/fonts/hack_nf/hack_nf_regular.ttf
sudo chown root:root /usr/local/share/fonts/hack_nf/hack_nf_italic.ttf
sudo chown root:root /usr/local/share/fonts/hack_nf/hack_nf_bold.ttf
sudo chown root:root /usr/local/share/fonts/hack_nf/hack_nf_bolditalic.ttf
wget -q https://raw.githubusercontent.com/petobens/trueline/master/trueline.sh -O ~/.trueline.sh --show-progress
echo 'source ~/.truline.sh' >> ~/.bashrc


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
