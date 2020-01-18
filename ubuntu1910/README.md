# Ubuntu Eoan Ermine Post-Install & Configuration Scripts

These resources target a [minimal installation](https://askubuntu.com/questions/1032718/minimal-installation-details) of [Ubuntu 19.10 "Eoan Ermine"](https://wiki.ubuntu.com/EoanErmine/ReleaseNotes).


## What do these files do?

### `post_install.sh`

Check the code, it should be relatively self-explanatory.
However, here is the summary:

- Installs fonts from Ubuntu's repositories
  - [Fira Code](https://github.com/tonsky/FiraCode)
  - [Roboto](https://en.wikipedia.org/wiki/Roboto)
  - [CrosCore](https://en.wikipedia.org/wiki/Croscore_fonts)
- Installs [LibreOffice](https://www.libreoffice.org/) [Writer](https://www.libreoffice.org/discover/writer/) and [Calc](https://www.libreoffice.org/discover/calc/) (respectively, Word and Excel)
- Gets rid of Snap system and reinstalls lost Gnome applications from standard repositories
- Installs some Gnome applications
  - [Totem](https://wiki.gnome.org/Apps/Videos) (video player)
  - [Baobab](https://wiki.gnome.org/Apps/DiskUsageAnalyzer) (disk usage analyzer)
  - [Bijiben](https://wiki.gnome.org/Apps/Notes) (notes)
  - [Clocks](https://wiki.gnome.org/Apps/Clocks)
  - [Calendar](https://wiki.gnome.org/Apps/Calendar)
  - [Calculator](https://wiki.gnome.org/Apps/Calculator)
- Installs system utilities
  - `tree`
  - `htop`
  - `neofetch`
  - `tty-clock`
  - Startup disk (USB) creator
  - Synaptic package manager
- Integrates appearance of QT5 applications, by making them use the `gtk2` stylesheet [Source: [ArchLinux wiki](https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications#QGtkStyle)]
- Calls `mkl4deb.sh` (i.e., installs Intel's [Math Kernel Library](https://software.intel.com/en-us/mkl)---MKL) [Source: [Eddelbuettel's mkl4deb](https://github.com/eddelbuettel/mkl4deb)]
- Installs software from the repositories
  - [R](https://www.r-project.org/) (+ links to MKL's BLAS for multithreaded operations)
  - [TeXlive](https://www.tug.org/texlive/)
  - [Ruby](https://www.ruby-lang.org/en/) (+ gem folder setting + install of [Jekyll](https://jekyllrb.com/) and [Bundler](https://bundler.io/))
- Installs software from downloaded packages
  - [Spotify](https://www.spotify.com)
  - [Dropbox](https://www.dropbox.com/)
  - [Mega](https://mega.nz/)
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [Skype](https://www.skype.com)
  - [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
  - [Rstudio](https://rstudio.com/)
  - [WhatsDesk](https://gitlab.com/zerkc/whatsdesk/) (unofficial WhatsApp client)
  - [Telegram](https://telegram.org/) (official client)
- Installs various fonts (+ reloads the font cache)
  - [Fira Sans](https://github.com/mozilla/Fira)
  - [Cascadia Code](https://github.com/microsoft/cascadia-code)
  - [Mononoki Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Mononoki)
- Calls `set_gsettings.sh` to set userspace preferences


### `set_gsettings.sh`

Sets various preferences for Gnome and Gnome applications

- Gnome interface
  - Makes the date show the weekday on the top panel
  - Enlarges cursor size to 32 px
  - Sets GTK theme to [Yaru light](https://github.com/ubuntu/yaru)
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
[Stata](https://www.stata.com/) is a general-purpose statistical software package.
As an economist and PhD candidate, I'm bound to using it. :unamused:


### `install_lm_backgrounds.sh`

Fetches official backgrounds used in the Linux Mint distribution and installs them.
