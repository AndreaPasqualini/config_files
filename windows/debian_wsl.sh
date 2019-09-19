#!/bin/bash

sudo apt update
sudo apt upgrade -y

# install basic TeXlive setup
sudo apt install -y texlive-latex-base texlive-latex-recommended texlive-latex-extra

# install basic Python3 for Economists setup
sudo apt install -y python3 python3-numpy python3-scipy python3-pandas python3-matplotlib

# install pdftk
sudo apt install -y pdftk imagemagick

# install linux utilities
sudo apt install -y build-essential man-db

# install trueline for Bash
git clone https://github.com/petobens/trueline ~/.trueline

# replace ~/.bashrc with my own
cp -f ./.bashrc ~/.bashrc

# clean apt cached packages
sudo apt clean

# remove unnecessary packages
sudo apt autoremove -y
