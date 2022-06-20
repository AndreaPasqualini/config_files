#!/bin/bash

mkdir $HOME/Documents
mkdir $HOME/Downloads
mkdir $HOME/Git

# Initial cleanup and update
sudo apt update
sudo apt upgrade -y

# Install basic tooling
sudo apt install -y neofetch tty-clock htop lolcat figlet toilet ranger vim curl wget build-essential git pdftk tldr

# Install TeXlive system
sudo apt install -y texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-xetex texlive-bibtex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-english texlive-lang-italian texlive-pictures texlive-science texlive-pstricks latexmk dvipng biber

# For some reason, w3m was installed by the previous commands, removing it now
sudo apt autoremove -y w3m

# Make WSL aware of Windows' browser
echo 'export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"' >> $HOME/.bashrc

# Install Ruby, with Bundler and Jekyll
sudo apt install -y \
ruby \
ruby-dev
echo '# Install Ruby Gems to ~/.gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/.gems"' >> ~/.bashrc
echo 'export PATH="$HOME/.gems/bin:$PATH"' >> ~/.bashrc

echo 'Reload the configuration for Bash with "source ~/.bashrc"'
echo 'Then install Bundler and Jekyll with "gem install bundler jekyll"'
