#!/bin/bash

# Set Gedit settings
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor display-right-margin true
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor tabs-size "4"
gsettings set org.gnome.gedit.preferences.editor wrap-mode "'none'"
gsettings set org.gnome.gedit.preferences.editor wrap-last-split-mode "'word'"

# Set Nautilus settings
gsettings set org.gnome.nautilus.list-view default-column-order "['name', 'size', 'type', 'detailed_type', 'owner', 'group', 'permissions', 'where', 'date_modified', 'date_modified_with_time', 'date_accessed', 'recency', 'starred']"
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'detailed_type', 'date_modified']"
gsettings set org.gnome.nautilus.preferences default-folder-viewer "'list-view'"
gsettings set org.gnome.nautilus.preferences search-filter-time-type "'last_modified'"

# Set Terminal settings
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant "'dark'"

# Set Interface settings
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface cursor-size "32"
gsettings set org.gnome.desktop.interface gtk-theme "'Yaru-light'"
gsettings set org.gnome.desktop.interface font-name "'Ubuntu 10'"
gsettings set org.gnome.desktop.interface monospace-font-name "'Ubuntu Mono 12'"
gsettings set org.gnome.desktop.wm.preferences titlebar-font "'Ubuntu Bold 10'"
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface text-scaling-factor "1.35"

# Set keybindings settings
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>m']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "[]"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>t']"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>f']"
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<Super>b']"

# Set Window Manager settings
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.mutter workspaces-only-on-primary false

# Set Dash-to-Dock settings
gsettings set org.gnome.shell.extensions.dash-to-dock click-action "'minimize-or-previews'"
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode "'DEFAULT'"
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "[]"
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text "''"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size "32"
