#!/bin/bash
#
# Jakob Hilarius <http://syscall.dk>, 2024
#

# TODO:
# install pinta
# install chrome
# install warp
# install 1password
# install dropbox
# install nodeenv

# Gives you previews in the file manager when pressing space
sudo apt install -y gnome-sushi
sudo apt install -y gnome-tweak-tool

install_app_ulauncher()

# if dpkg --list | grep -q pinta; then
#   echo "Pinta is already installed!"
# else
#   echo "Pinta is not installed. Installing now..."
#   # Install Pinta here, e.g., using apt-get or snap
# fi

install_app_with_apt() {
    local APP_NAME=$1
}

install_app_ulauncher() {
    sudo add-apt-repository universe -y
    sudo add-apt-repository ppa:agornostal/ulauncher -y
    sudo apt update -y
    sudo apt install -y ulauncher

    # Start ulauncher to have it populate config before we overwrite
    mkdir -p ~/.config/autostart/
    cp config/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
    gtk-launch ulauncher.desktop >/dev/null 2>&1
    sleep 2 # ensure enough time for ulauncher to set defaults
    cp config/ulauncher.json ~/.config/ulauncher/settings.json
}

is_app_installed() {
  local APP_NAME=$1
  return dpkg --list | grep -q $APP_NAME
}