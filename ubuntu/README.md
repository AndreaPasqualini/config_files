# Ubuntu configurations files

This folder targets a minimal installation of [Ubuntu Desktop](https://www.ubuntu.com/desktop) 18.04 LTS HWE.
To see how a minimal installation differs from a complete one, see [this answer on AskUbuntu](https://askubuntu.com/a/1036557).


## Post-install configurator

This file performs the following actions.

- Download and install packages with `snap`:
	- [`communitheme`](https://snapcraft.io/communitheme)
- Download and install packages with `apt`:
	- `git`, `build-essential`, `gdebi`, `synaptic`
	- My Python3 stack for data science (e.g., numpy, scipy, pandas, matplotlib, spyder, jupyter)
	- My [TeXlive](https://tug.org/texlive/) stack, including TeXstudio
	- `npm` for Node.js development
	- USB creator (because it is absent in minimal installation)
	- Transmission (because it is absent in minimal installation)
	- [Spotify](https://www.spotify.com/download/linux/)
	- GNOME apps: calendar, mines, sudoku, todo
	- Some fonts (e.g., Fira Code, Noto, Roboto, Hack)
	- Some theming assets (e.g., Papirus icon theme, QT5 configurator)
- Download things with `wget` (and installs them system-wide):
	- [Visual Studio Code](https://code.visualstudio.com/)
	- [Skype](https://www.skype.com/en/get-skype/)
	- [GitHub Desktop](https://desktop.github.com/) (from Linux fork [here](https://github.com/shiftkey/desktop/))
	- [Steam](https://store.steampowered.com/about/)
	- [Linux Mint backgrounds](http://packages.linuxmint.com/list.php?release=Tessa#main)
	- Fira Sans font family
	- Roboto Mono font family
- Sets `gsettings` options to my liking
	- Click-to-minimize for the dash
	- Window controls on the left
	- Disable desktop icons
	- Set text scaling factor to 1.2
	- Set desktop fonts, GTK theme and icon theme
	- Set the desktop background to a Mint Tessa image
	- Allow `Super`+`Right Click` to resize windows
	- Removes traces of `Ctrl`+`Alt`+arrow to navigate across workspaces, so to avoid conflicts with similar shortcuts defined in other applications (e.g., [VS Code](https://github.com/Microsoft/vscode/issues/509))


Things left to be done manually (or to be added to the script):

- Logout after `communitheme` is installed, login with snap active
- Set shell theme after enabling the User Themes extension
- Change the lock screen shortcut from `Ctrl`+`Alt`+`L` to `Super`+`L`
- Logout after `gnome-extensions-*` are installed from APT, so to enable them at next login
