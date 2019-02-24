# KDE (KDE Neon) configurator

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
	- [Linux Mint backgrounds](http://packages.linuxmint.com/list.php?release=Tessa#main)
	- Fira Sans font family
	- Roboto Mono font family
- Install the USB creator with QT GUI
- Install `muon` (QT-flavored sibling of `synaptic`)
- Install `filelight` (QT-flavored sibling of `baobab`)
- Install Transmission with QT GUI


Other intended goals are

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


## Learning resources

- [KDE sys admin](https://userbase.kde.org/KDE_System_Administration)
- [KDE sys admin / Configuration files](https://userbase.kde.org/KDE_System_Administration/Configuration_Files)
- [KDE sys admin / KDE FS hierarchy](https://userbase.kde.org/KDE_System_Administration/KDE_Filesystem_Hierarchy)
- [KDE sys admin / XDG FS hierarchy](https://userbase.kde.org/KDE_System_Administration/XDG_Filesystem_Hierarchy)
- [KDE sys admin / Plasma 5 scripting](https://userbase.kde.org/KDE_System_Administration/PlasmaTwoDesktopScripting)
- [Mounting ISO with Dolphin](https://unix.stackexchange.com/questions/47080/mounting-iso-in-linux-kde/319018#319018)
