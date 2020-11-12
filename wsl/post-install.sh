#!/bin/bash

mkdir ~/Documents
mkdir ~/Downloads
mkdir ~/Git

# Initial cleanup and update
sudo apt update
sudo apt upgrade -y

# Install basic tooling
sudo apt install -y man-db neofetch tty-clock htop lolcat figlet toilet ranger vim curl wget build-essential git pdftk npm

# Install TeXlive system
sudo apt install -y texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-xetex texlive-bibtex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-english texlive-lang-italian texlive-pictures texlive-science texlive-pstricks latexmk dvipng

# For some reason, w3m was installed by the previous commands, removing it now
sudo apt autoremove -y w3m
