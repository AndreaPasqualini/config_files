# Install packages from APT
sudo apt install -y \
build-essential \
git \
curl

# Install Fira Code font family
sudo apt install -y \
fonts-firacode \
fonts-croscore \
fonts-crosextra-caladea \
fonts-crosextra-carlito \
fonts-roboto \
fonts-roboto-slab

# Install Libreoffice Writer and Calc
sudo apt install -y \
libreoffice-writer \
libreoffice-calc \
libreoffice-gtk3

# Get rid of ugly snapd
sudo apt purge -y snapd
sudo apt install -y gnome-characters gnome-logs

# Install Gnome applications
sudo apt install -y \
totem \
baobab \
bijiben \
gnome-clocks \
gnome-calendar \
gnome-calculator

# Install system utilities
sudo apt install -y \
tree \
htop \
neofetch \
tty-clock \
gpart \
baobab \
gparted \
synaptic \
usb-creator-gtk


# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client


# Install Intel's MKL
sudo bash ./mkl4deb.sh


# Install R system, packages and dependencies
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
echo "deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" | sudo tee /etc/apt/sources.list.d/cran.list
sudo apt update && sudo apt install -y r-base-core

sudo apt install -y \
libcurl4-openssl-dev \
libssl-dev \
libxml2-dev \
libudunits2-dev \
libgdal-dev


# Install TeXlive system and Kile
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
latexmk


# Download Miniconda
wget -qP ~/Downloads https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh --show-progress


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


# Download DEB files
wget -q https://go.skype.com/skypeforlinux-64.deb -O ~/Downloads/skype.deb --show-progress
wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5019-amd64.deb -O ~/Downloads/rstudio.deb --show-progress
wget -q https://zerkc.gitlab.io/whatsdesk/whatsdesk_0.2.18_amd64.deb -O ~/Downloads/whatsdesk.deb --show-progress
wget -q https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb -O ~/Downloads/dropbox.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega.deb --show-progress
wget -q https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/nautilus-megasync-xUbuntu_18.04_amd64.deb -O ~/Downloads/mega_nautilus_ext.deb --show-progress

cd ~/Downloads
sudo apt install -y \
./dropbox.deb \
./mega.deb \
./mega_nautilus_ext.deb \
./skype.deb \
./rstudio.deb \
./whatsdesk.deb
cd -


# Remove unnecessary dependencies
sudo apt autoremove -y


# Set Gsettings
bash ./set_gsettings.sh


# Reboot for sanity
echo 'Rebooting in 10 seconds... [Ctrl+C to cancel]'
for i in {10..01}
do
	echo "$i"
	sleep 1
done
sudo shutdown -r now
