# Download the Stata installer

cd $HOME/Downloads
wget --quiet --show-progress https://download.unibocconi.it/Software/Stata16Linux64.tar.gz
mkdir stata16
tar xf ./Stata16Linux64.tar.gz --directory=./stata16/
sudo mkdir /usr/local/Stata16
cd /usr/local/Stata16
sudo $HOME/Downloads/stata16/install
cd -

# Install required dependency
sudo apt install -y libtinfo5