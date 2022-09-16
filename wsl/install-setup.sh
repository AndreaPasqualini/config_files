#!/bin/bash

mkdir $HOME/Documents
mkdir $HOME/Downloads
mkdir $HOME/Git

# Initial cleanup and update
sudo apt update
sudo apt upgrade -y

# Install basic tooling
sudo apt install -y --no-install-recommends neofetch tty-clock htop lolcat figlet toilet ranger vim curl wget build-essential git pdftk tldr powerline powerline-gitstatus

# Install TeXlive system
sudo apt install -y --no-install-recommends texlive-base texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-xetex texlive-bibtex-extra texlive-fonts-recommended texlive-fonts-extra texlive-lang-english texlive-lang-italian texlive-pictures texlive-science texlive-pstricks latexmk dvipng biber

# For some reason, w3m was installed by the previous commands, removing it now
sudo apt autoremove -y w3m

# Make WSL aware of Windows' browser
echo "# Make WSL aware of Windows' browser" >> $HOME/.bashrc
echo 'export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"' >> $HOME/.bashrc
echo '' >> $HOME/.bashrc

# Make Bash use Powerline
echo '# Make Bash use Powerline' >> $HOME/.bashrc
echo 'if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then' >> $HOME/.bashrc
echo '  powerline-daemon -q' >> $HOME/.bashrc
echo '  POWERLINE_BASH_CONTINUATION=1' >> $HOME/.bashrc
echo '  POWERLINE_BASH_SELECT=1' >> $HOME/.bashrc
echo '  source /usr/share/powerline/bindings/bash/powerline.sh' >> $HOME/.bashrc
echo 'fi' >> $HOME/.bashrc
echo '' >> $HOME/.bashrc

# Make vim use Powerline
echo 'python3 from powerline.vim import setup as powerline_setup' >> $HOME/.vimrc
echo 'python3 powerline_setup()' >> $HOME/.vimrc
echo 'python3 del powerline_setup' >> $HOME/.vimrc
echo 'set laststatus=2' >> $HOME/.vimrc
echo '' >> $HOME/.vimrc

# Install Ruby, with Bundler and Jekyll
sudo apt install -y \
ruby \
ruby-dev
echo '# Install Ruby Gems to ~/.gems' >> $HOME/.bashrc
echo 'export GEM_HOME="$HOME/.gems"' >> $HOME/.bashrc
echo 'export PATH="$HOME/.gems/bin:$PATH"' >> $HOME/.bashrc
echo '' >> $HOME/.bashrc

echo 'Reload the configuration for Bash with "source ~/.bashrc"'
echo 'Then install Bundler and Jekyll with "gem install bundler jekyll"'
