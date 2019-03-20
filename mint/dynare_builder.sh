#!/bin/bash

# This file downloads the latest stable source code for Dynare and compiles it
# against MATLAB. It is assumed that Matlab R2018b (9.5) is installed at
# /usr/local/MATLAB/R2018b. The execution of this file takes quite a lot of
# time, so make sure you can go get a cup of coffee in the meantime.


# Installing dependencies

sudo apt install -y \
build-essential \
gfortran \
liboctave-dev \
libboost-graph-dev \
libboost-filesystem-dev \
libgsl-dev \
libmatio-dev \
libslicot-dev \
libslicot-pic \
libsuitesparse-dev \
flex \
bison \
autoconf \
automake \
texlive \
texlive-publishers \
texlive-latex-extra \
texlive-fonts-extra \
texlive-latex-recommended \
texlive-science \
texlive-generic-extra \
lmodern \
python3-sphinx \
libjs-mathjax \
doxygen


# Downloading the source code

mkdir ~/dynare_buildbox
cd ~/dynare_buildbox
wget https://www.dynare.org/release/source/dynare-4.5.7.tar.xz


# Unpacking source

tar xf dynare-4.5.7.tar.xz


# Configuring and building

./configure \
--with-matlab=/usr/local/MATLAB/R2018b MATLAB_VERSION=9.5 \
--disable-octave \
--enable-openmp

make


# Moving the folder to /usr/lib for later use

sudo cp -R ./dynare-4.5.7 /usr/lib


# Making sure Matlab sees Dynare

echo addpath('/usr/lib/dynare-4.5.7/matlab') > ~/Documents/MATLAB/startup.m


# Removing useless dependencies

sudo apt purge -y octave
sudo apt autoremove -y
