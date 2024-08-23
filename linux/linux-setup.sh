#!/bin/bash
#
# Jakob Hilarius <http://syscall.dk>, 2024
#

# Reveal week numbers in the Gnome calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Configure dock
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32

# Set light mode
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'

# Map like Easy Move+Resize
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super><Ctrl>'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true