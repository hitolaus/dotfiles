#!/bin/bash
#
# Jakob Hilarius <http://syscall.dk>, 2024
#

# TODO:
# install pinta
# install chrome
# install warp
# install whatsapp

for installer in apps/install-*.sh; do 
  source $installer
done

is_app_installed() {
  local APP_NAME=$1
  return dpkg --list | grep -q $APP_NAME
}


# if dpkg --list | grep -q pinta; then
#   echo "Pinta is already installed!"
# else
#   echo "Pinta is not installed. Installing now..."
#   # Install Pinta here, e.g., using apt-get or snap
# fi