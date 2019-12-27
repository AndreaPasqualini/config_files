# Installing Stata 16
wget -q http://download.unibocconi.it/Software/Stata16Linux64.tar.gz -O ~/Downloads/Stata16.tar.gz --show-progress
mkdir ~/Downloads/stata16
rm tar -C ~/Downloads/stata16 -xvf ~/Downloads/Stata16.tar.gz
sudo mkdir /usr/local/Stata16
cd /usr/local/Stata16
sudo ~/Downloads/stata16/install  # hands off control to user
sudo ./stinit                     # hands off control to user
cd -
mkdir ~/.ado
sudo touch /usr/local/Stata16/profile.do
echo 'sysdir set PLUS "~/.stata/ado/plus/"' | sudo tee -a /usr/local/Stata16/profile.do
echo 'sysdir set PERSONAL "~/.stata/ado/personal/"' | sudo tee -a /usr/local/Stata16/profile.do
echo 'sysdir set OLDPLACE "~/.stata/ado/"' | sudo tee -a /usr/local/Stata16/profile.do
sudo cp ./stata16.desktop /usr/share/applications/
