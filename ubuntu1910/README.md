# Ubuntu Eoan Ermine Post-Install & Configuration Scripts

These resources target a [minimal installation](https://askubuntu.com/questions/1032718/minimal-installation-details) of [Ubuntu 19.10 "Eoan Ermine"](https://wiki.ubuntu.com/EoanErmine/ReleaseNotes).


## What do these files do?

### `post_install.sh`

Check the code, it should be relatively self-explanatory.
However, here is the summary:

- Installs some fonts from Ubuntu's repositories ([Fira Code](https://github.com/tonsky/FiraCode), [Roboto](https://en.wikipedia.org/wiki/Roboto), [CrosCore](https://en.wikipedia.org/wiki/Croscore_fonts))
- Installs LibreOffice Writer and Calc (respectively, Word and Excel)
- Gets rid of Snap system and reinstalls lost Gnome applications from standard repositories
- Installs some Gnome applications
  - Totem (video player)
  - Baobab (disk usage analyzer)
  - Bijiben (notes)
  - Clock
  - Calendar
  - Calculator
- Installs system utilities
  - `tree`
  - `htop`
  - `neofetch`
  - `tty-clock`
  - Startup disk (USB) creator
  - Synaptic package manager
- Fixes appearance of QT5 applications, by making them use the `gtk2` stylesheet
- Calls `mkl4deb.sh` (i.e., installs Intel's Math Kernel Library---MKL)
- Installs software from the repositories
  - R (+ links to MKL's BLAS for multithreaded operations)
  - TeXlive
  - Ruby (+ gem folder setting + install of Jekyll and Bundler)
- Installs proprietary software
  - Spotify
  - Dropbox
  - Mega
  - Visual Studio Code
  - Skype
  - Miniconda
  - Rstudio
  - WhatsDesk (unofficial WhatsApp client)
  - Telegram (official client)
- Installs various fonts (+ reloads the font cache)
  - Fira Sans
  - Cascadia Code
  - Mononoki Nerd Font
- Calls `set_gsettings.sh` to set userspace preferences


### `set_gsettings.sh`

Sets various preferences for Gnome and Gnome applications

- Gnome interface
  - Makes the date show the weekday on the top panel
  - Enlarges cursor size to 32 px
  - Sets GTK theme to Yaru light
  - Shows battery percentage in top panel
  - Sets font DPI scaling factor to `1.25`
- Keybindings
  - Gets rid of all <kbd>Ctrl</kbd>+<kbd>Alt</kbd> shortcuts because of conflicts with some applications' shortcuts
  - Sets <kbd>Super</kbd>+<kbd>t</kbd> to open a new terminal (gets rid of <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>t</kbd>)
  - Sets <kbd>Super</kbd>+<kbd>e</kbd> to open a new Nautilus window (or raises an already open window if it is at `~`)
- Window manager
  - Makes <kbd>Super</kbd>+<kbd>R click</kbd> resize windows, instead of opening the window control menu
  - Makes workspaces span multiple physical displays (instead of tying them to only one monitor)
- Dash to Dock
  - Makes click on an open application to minimize it, or list all windows if several are open
  - Disables dock transparency effect
- Gedit
  - Shows line numbers
  - Highlights matching brackets
  - Displays minimap
  - Displays right margin at the end of column 80
  - Highlights current line
  - Sets tab size to 4 spaces
  - Makes <kbd>Tab</kbd> insert spaces
  - Disables word wrapping
  - Prevents whole words from being wrapped
- Terminal
  - Sets theme variant to Dark
- Nautilus
  - Sets default view to detailed list
  - Makes the "Detailed type" column appear
  - Reorders columns


### `install_stata16.sh`

The filename is self-explanatory.


### `install_lm_backgrounds.sh`

Fetches official backgrounds used in the Linux Mint distribution and installs them.
