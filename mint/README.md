# Linux Mint (Cinnamon) Post-Install Configurator

The script [`post_install.sh`](./post_install.sh) targets a standard installation of [Linux Mint 19.1 Cinnamon Edition](https://linuxmint.com/edition.php?id=261).
The script works for Mint Tessa 19.1, but might also work for other versions of Mint 19.

Current features:

- Set Nemo preferences
- Remove `ryhtmbox`, `hexchat`, `thunderbird` and related dependencies
- Install `spotify-client`
- Install VS code
- Install GitHub desktop
- Install Dropbox sync client
- Install Mega sync client
- Install Teamviewer
- Install `python3` data science stack
- Install LaTeX stack


Desiderata:

- Remove any trace of `Ctrl`+`Alt` shortcuts, replace with `Meta`+`Ctrl`
- Set Mint-Y-red as GTK theme and icon theme, set Mint-Y-dark-red as Cinnamon theme
- Set Accessibility -> Large text
- Set all fonts size to 11
- Set QT5 settings fonts to match
