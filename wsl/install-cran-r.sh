#!/bin/bash

# Install Intel's MKL libraries
sudo apt update
sudo apt install -y intel-mkl libmkl-rt
echo "MKL_THREADING_LAYER=GNU" | sudo tee -a /etc/environment

# Install dependencies for R packages
sudo apt install -y \
libcurl4-openssl-dev \
libssl-dev \
libxml2-dev \
libudunits2-dev \
libgdal-dev

# Register CRAN's repository
sudo apt update -qq
sudo apt install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt update
sudo apt install -y r-base r-base-dev

# Install radian
sudo apt install -y python3-pip
sudo pip3 install radian

# R relies on timedatectl to figure out the system's timezone, but WSL does not boot with systemd
echo '' | sudo tee -a /etc/R/Renviron
echo '# Prevent R from using timedatectl, which is unavailable on WSL environments' | sudo tee -a /etc/R/Renviron
echo 'TZ=Europe/London' | sudo tee -a /etc/R/Renviron
echo '' | sudo tee -a /etc/R/Renviron
