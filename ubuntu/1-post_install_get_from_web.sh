#!/bin/bash

# Downloading DEB files  ======================================================
echo 'Downloading Telegram'
wget -qP ~/Downloads https://telegram.org/dl/desktop/linux --show-progress

echo 'Downloading Visual Studio Code'
wget -qP ~/Downloads https://go.microsoft.com/fwlink/?LinkID=760868 --show-progress

echo 'Downloading Steam'
wget -qP ~/Downloads https://steamcdn-a.akamaihd.net/client/installer/steam.deb --show-progress


# Downloading fonts found on the web  =========================================
echo 'Downloading additional fonts'
mkdir ~/Downloads/SourceCodePro
mkdir ~/Downloads/Fira
mkdir ~/Downloads/RobotoMono

wget -qP - ~/Downloads/ https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip scp.zip --show-progress
wget -qP - ~/Downloads/ https://github.com/mozilla/Fira/archive/4.202.zip fira.zip --show-progress

wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Bold.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-BoldItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Italic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Light.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-LightItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Medium.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-MediumItalic.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Regular.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-Thin.ttf --show-progress
wget -qP ~/Downloads/RobotoMono/ https://github.com/google/fonts/tree/master/apache/robotomono/RobotoMono-ThinItalic.ttf --show-progress


# # Extracting ZIPs and putting fonts to /usr/share/fonts/truetype/  ============
# cd ~/Downloads
# echo 'Installing downloaded fonts to /usr/share/fonts/truetype/'
# unzip -jq scp.zip ./SourceCodePro/
# unzip -jq fira.zip ./Fira/

# sudo mv ./SourceCodePro /usr/share/fonts/truetype/SourceCodePro/
# sudo mv ./Fira /usr/share/fonts/truetype/Fira/
# sudo mv ./RobotoMono /usr/share/fonts/truetype/RobotoMono/

# cd ~


# # Rebuilding font cache  ======================================================
# sudo fc-cache -v
