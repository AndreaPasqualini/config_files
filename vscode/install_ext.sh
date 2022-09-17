#!/bin/bash

code --install-extension tinkertrain.theme-panda
code --install-extension github.github-vscode-theme
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension vscode-icons-team.vscode-icons
code --install-extension grapecity.gc-excelviewer
code --install-extension yzhang.markdown-all-in-one
code --install-extension adammaras.overtype
code --install-extension ms-python.python
code --install-extension reditorsupport.r
code --install-extension james-yu.latex-workshop
code --install-extension yahya-gilany.vscode-clock
code --install-extension ban.spellright

# Allow ban.spellright to see system dictionaries
mkdir -p $HOME/.config/Code/Dictionaries
ln -s /usr/share/hunspell/* $HOME/.config/Code/Dictionaries
