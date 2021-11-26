# Download the Stata installer

cd $HOME/Downloads
wget --quiet --show-progress https://download.unibocconi.it/Software/Stata17Linux64.tar.gz
mkdir stata17
tar xf ./Stata17Linux64.tar.gz --directory=./stata17/
sudo mkdir /usr/local/Stata17
cd /usr/local/Stata17
sudo $HOME/Downloads/stata17/install
cd -

# Install required dependency
sudo apt install -y libtinfo5

# Create a symbolic link for stata's executable
#   --> assuming that /usr/local/bin is in the PATH env variable
sudo ln -s /usr/local/Stata17/stata-se /usr/local/bin/stata
