#! /bin/bash

# Download Miniconda
wget -qP $HOME/Downloads https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh --show-progress

# Add Miniconda's binaries to PATH
echo "# Add Miniconda's binaries to PATH" >> $HOME/.bashrc
echo 'export PATH="$HOME/.miniconda3/bin:$PATH"' >> $HOME/.bashrc

# Install Miniconda and remove on exit
bash $HOME/Downloads/Miniconda3-latest-Linux-x86_64.sh
rm $HOME/Downloads/Miniconda3-latest-Linux-x86_64.sh

# Update Miniconda's binaries and install packages
$HOME/.miniconda3/bin/conda update --all
$HOME/.miniconda3/bin/conda install numpy scipy pandas patsy statsmodels matplotlib seaborn ipython jupyterlab pylint plotly

# Generate the configuration file for the Jupyter server
$HOME/.miniconda/bin/jupyter notebook --generate-config

echo ''
echo 'Go to the location of the configuration file and search for the following'
echo '    c.NotebookApp.use_redirect_file'
echo 'It will be commented out. Remove the comment symbol and set it to False.'
echo "This way, Windows' browser will be correctly launched by the server."
