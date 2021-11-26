#!/bin/bash

mkdir $HOME/Documents
mkdir $HOME/Downloads
mkdir $HOME/Git

# Initial cleanup and update
sudo apt update
sudo apt upgrade -y

# Install basic tooling
sudo apt install -y --no-install-recommends man-db neofetch tty-clock htop lolcat figlet toilet ranger vim curl wget build-essential git pdftk tldr

# Install GUI tooling
sudo apt autoremove -y --purge gucharmap
sudo apt install -y --no-install-recommends gnome-characters
sudo apt install -y --no-install-recommends transmission-gtk

# Install TeXlive system
sudo apt install -y texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-xetex texlive-bibtex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-english texlive-lang-italian texlive-pictures texlive-science texlive-pstricks latexmk dvipng

# For some reason, w3m was installed by the previous commands, removing it now
sudo apt autoremove -y w3m

# Install Ruby, with Bundler and Jekyll
sudo apt install -y \
ruby \
ruby-dev
echo '# Install Ruby Gems to ~/.gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/.gems"' >> ~/.bashrc
echo 'export PATH="$HOME/.gems/bin:$PATH"' >> ~/.bashrc
# source ~/.bashrc
# gem install bundler jekyll
