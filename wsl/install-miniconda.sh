#! /bin/bash

# Download Miniconda
wget -qP ~/Downloads https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh --show-progress

# Add Miniconda's binaries to PATH
echo "# Add Miniconda's binaries to PATH" >> ~/.bashrc
echo 'export PATH="/home/andrea/.miniconda3/bin:$PATH"' >> ~/.bashrc

# Install Miniconda and remove on exit
bash ~/Downloads/Miniconda3-latest-Linux-x86_64.sh
rm ~/Downloads/Miniconda3-latest-Linux-x86_64.sh

# Update Miniconda's binaries and install packages
/home/andrea/.miniconda3/bin/conda update --all
/home/andrea/.miniconda3/bin/conda install numpy scipy pandas patsy statsmodels matplotlib seaborn ipython jupyterlab pylint plotly
/home/andrea/.miniconda3/bin/jupyter labextension install jupyterlab-plotly@4.12.0
