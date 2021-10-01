# copy profile file in Stata's installation directory
sudo cp ./profile.do /usr/local/Stata16/

# install Stata's packages
stata -b ./install_packages.do
