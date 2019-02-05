# Ubuntu configurations files

This folder targets a minimal installation of [Ubuntu Desktop](https://www.ubuntu.com/desktop) 18.04 LTS HWE.
To see how a minimal installation differs from a complete one, see [this answer on AskUbuntu](https://askubuntu.com/a/1036557).


## Post-install script

The file [`post_install.sh`](./post_install.sh) performs the following actions.
It targets Ubuntu and does not make assumptions about the desktop environment (see below for those).


- Download and install packages with `apt`:
	- `git`, `build-essential`,
	- My Python3 stack for data science (e.g., numpy, scipy, pandas, matplotlib, spyder, jupyter)
	- My [TeXlive](https://tug.org/texlive/) stack, including TeXstudio
	- `npm` for Node.js development
	- [Spotify](https://www.spotify.com/download/linux/)
	- Some fonts (e.g., Fira Code, Noto, Roboto, Hack)
- Download things with `wget` (and installs them system-wide):
	- [Visual Studio Code](https://code.visualstudio.com/)
	- [Skype](https://www.skype.com/en/get-skype/)
	- [GitHub Desktop](https://desktop.github.com/) (from Linux fork [here](https://github.com/shiftkey/desktop/))
	- [Steam](https://store.steampowered.com/about/)
	- [Linux Mint backgrounds](http://packages.linuxmint.com/list.php?release=Tessa#main)
	- Fira Sans font family
	- Roboto Mono font family



Things left to be done manually (or to be added to the script):

- Logout after `communitheme` is installed, login with snap active
- Set shell theme after enabling the User Themes extension
- Logout after `gnome-extensions-*` are installed from APT, so to enable them at next login


## Desktop environment-specific configurators

### Gnome (regular Ubuntu, no flavor)

This script targets exactly Ubuntu 18.04 as distributed and supported by Canonical themselves.
Again, this is about the minimal installation.

- Download and install packages with `snap`:
	- [`communitheme`](https://snapcraft.io/communitheme)
- Install `gdebi`, `synaptic`
- USB creator with GTK GUI (because it is absent in minimal installation)
- Transmission with GTK GUI (because it is absent in minimal installation)
- GNOME apps: mines, sudoku, weather
- Some theming assets (e.g., Papirus icon theme, QT5 theme)
- Install the [Tetra theme](https://github.com/hrdwrrsk/tetra-gtk-theme)
- Sets `gsettings` options to my liking
	- Click-to-minimize for the dash
	- Window controls on the left
	- Disable desktop icons
	- Set text scaling factor to 1.2
	- Set the desktop background to a Mint Tessa image
	- Allow `Super`+`Right Click` to resize windows
	- Removes traces of `Ctrl`+`Alt`+arrow to navigate across workspaces, so to avoid conflicts with similar shortcuts defined in other applications (e.g., [VS Code](https://github.com/Microsoft/vscode/issues/509))

They try to install the GTK themes, the Shell themes and the icon themes, when these are available.
Setting the Shell theme is left to the user's manual operation.
The scripts finally perform a clean-up of files that will not be necessary after the operations.


### KDE (KDE Neon)

I'm writing a post-install script for [KDE Neon](https://neon.kde.org/).
It's essentially the same as the minimal installation of regular Ubuntu, but with KDE.
The file is [`kde_config.sh`](./kde_config.sh)

The intended goals are

- Install the USB creator with QT GUI
- Install `muon` (QT-flavored sibling of `synaptic`)
- Install `filelight` (QT-flavored sibling of `baobab`)
- Install Transmission with QT GUI
- Remove the circle around the close button on windows
- Remove the gradient on titlebars on windows
- Set the Breeze Light color scheme system-wide
- Allow the `Meta` key to act as window modifier (move and resize with mouse buttons)
- Modify the default terminal profile
	- Set font size to 11
	- Set cursor to _I-beam_
	- Set _Breeze colors_ color scheme
	- Remove the scroll bar
- Insert templates in Dolphin
- Set minimum panel _thickness_ at 42 pixels
- Set up the main panel and a [`latte-dock`](https://github.com/KDE/latte-dock) instance in a macOS-like fashion
- Change the keybinding for Konsole from `Ctrl`+`Alt`+`T` to `Meta`+`T`
- Other things I'm not thinking about right now
