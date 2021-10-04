#!/bin/bash

# Install Intel's MKL libraries
wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
sudo apt-key add ./GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
rm ./GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
echo "deb https://apt.repos.intel.com/mkl all main" | sudo tee -a /etc/apt/sources.list.d/intel-mkl.list
sudo apt update
sudo apt install intel-mkl-64bit-2020.3-111
sudo update-alternatives --install /usr/lib/x86_64-linux-gnu/libblas.so     libblas.so-x86_64-linux-gnu      /opt/intel/mkl/lib/intel64/libmkl_rt.so 150
sudo update-alternatives --install /usr/lib/x86_64-linux-gnu/libblas.so.3   libblas.so.3-x86_64-linux-gnu    /opt/intel/mkl/lib/intel64/libmkl_rt.so 150
sudo update-alternatives --install /usr/lib/x86_64-linux-gnu/liblapack.so   liblapack.so-x86_64-linux-gnu    /opt/intel/mkl/lib/intel64/libmkl_rt.so 150
sudo update-alternatives --install /usr/lib/x86_64-linux-gnu/liblapack.so.3 liblapack.so.3-x86_64-linux-gnu  /opt/intel/mkl/lib/intel64/libmkl_rt.so 150
echo "/opt/intel/lib/intel64"     | sudo tee    /etc/ld.so.conf.d/mkl.conf
echo "/opt/intel/mkl/lib/intel64" | sudo tee -a /etc/ld.so.conf.d/mkl.conf
sudo ldconfig
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
