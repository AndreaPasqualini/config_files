#!/bin/bash

# Install Intel's MKL libraries
sudo apt update
sudo apt install -y intel-mkl libmkl-rt
echo "MKL_THREADING_LAYER=GNU" | sudo tee -a /etc/environment

# Install dependencies for R packages
sudo apt install -y --no-install-recommends \
libcurl4-openssl-dev \
libssl-dev \
libxml2-dev \
libudunits2-dev \
libgdal-dev \
software-properties-common \
dirmngr

# Register CRAN's repository
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt update
sudo apt install -y --no-install-recommends r-base r-base-dev

# If on WSL, prevent R from relying on timedatectl, usually provided by systemd
if grep -qi [M|m]icrosoft /proc/version; then
    echo '' | sudo tee -a /etc/R/Renviron
    echo '# Prevent R from relying on timedatectl (systemd) because unavailable' | sudo tee -a /etc/R/Renviron
    echo 'TZ=Europe/London' | sudo tee -a /etc/R/Renviron
    echo '' | sudo tee -a /etc/R/Renviron
fi
