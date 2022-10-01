#! /bin/bash

# Download Miniconda
wget -qP $HOME/Downloads https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh --show-progress

# Add Miniconda's binaries to PATH
echo "# Add Miniconda's binaries to PATH" >> $HOME/.bashrc
echo 'export PATH="$HOME/.miniconda3/bin:$PATH"' >> $HOME/.bashrc

# Install Miniconda and remove on exit
bash $HOME/Downloads/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/.miniconda3
rm $HOME/Downloads/Miniconda3-latest-Linux-x86_64.sh

# Update Miniconda's binaries and install packages
$HOME/.miniconda3/bin/conda update --all
$HOME/.miniconda3/bin/conda install python=3.8
$HOME/.miniconda3/bin/conda install numpy scipy pandas patsy statsmodels matplotlib seaborn ipython jupyterlab pylint plotly

# Generate the conf file for Jupyter and prevent use of redirect file, but this is only useful on WSL
if grep -qi microsoft /proc/version; then
    $HOME/.miniconda3/bin/jupyter notebook --generate-config
    sed -i 's/# c.NotebookApp.use_redirect_file = True/c.NotebookApp.use_redirect_file = False/g' $HOME/.jupyter/jupyter_notebook_config.py
fi
