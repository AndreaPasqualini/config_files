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
echo "deb https://cloud.r-project.org/bin/linux/debian buster-cran40/" | sudo tee /etc/apt/sources.list.d/cran.list
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys E19F5F87128899B192B1A2C2AD5F960A256A04AF
sudo apt update
sudo apt install -y r-base r-base-dev
