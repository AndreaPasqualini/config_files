# Configuration Files

These files allow me to speed up the setup of my machines in case I blow them up, somebody/something else blows them up or I get my hands on a new one.
The goal is to automatize the installation of apps and configuration of the system as much as possible.
Ideally, I'd let the machine run these and I'd be up and running in 20 minutes (depending on the speed of the internet connection).


## OS configuration

This repository assumes a Windows 10 platform with WSL installed.
Within WSL, a Ubuntu LTS release is expected.
At the time of writing, it is Ubuntu 20.40 "Focal Fossa".


## What this repository does

This repository sets up a WSL environment in Windows 10.
Ubuntu LTS is expected to be installed.
It does not matter whether WSL is version 1 or 2.

The tasks performed, broadly speaking, are:
- Install packages from Ubuntu's repositories (e.g., CLI utilities, LaTeX packages, special config in `~/.bashrc`);
- Install miniconda and related packages (e.g., numpy, pandas, matplotlib, jupyter);
- Install the most recent version of R from CRAN repositories, and make it use MKL libraries;
- Install Stata and related packages; and
- Install extensions and store settings for Visual Studio Code.


## My setup

I run LaTeX, Python, R, Stata and (soon) Julia in my WSL environment in Windows.
Unfortunately, at the time of writing it is not possible to easily install MATLAB in WSL.
I have tried installing the regular version of MATLAB but it complained that a display did not exist (fair enough).
It is not possible to run a command-line only version of MATLAB (but I did not yet try to install the MATLAB Production Server).
Therefore, I install MATLAB in Windows and hope not to ever need it.


## Notes on executing scripts

A responsibility waiver is in the [License file](./LICENSE).
You run the scripts at your own risk.
If you run my code and your machine explodes and you point the finger at me, I will laugh at you.
Read the code before executing, unless you blindly trust the source (you shouldn't anyway).
What I publish here should work (works for me, at least), but you have the reponsibility of _understanding_ before executing.

Pull Requests are welcome!


## Credits

Thanks to [@eddelbuettel](https://github.com/eddelbuettel) for [his script](https://github.com/eddelbuettel/mkl4deb/blob/master/script.sh) to install Intel's MKL on deb-based systems.
My version differs from his just for the update to the specific MKL version I want to download.
