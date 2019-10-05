#!/bin/bash 

mkdir ~/.R/x86_64-pc-linux-gnu-library/3.6

R -exec ".libPaths(c('~/.R/x86_64-pc-linux-gnu-library/3.6', .libPaths()))"
R -exec "install.packages(c('gmm', 'ecm', 'fredr', 'eurostat', 'feather', 'readr', 'tidyverse'))
