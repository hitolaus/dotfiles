#!/bin/bash
#
# Install the files in the home directory
#
# Jakob Hilarius <http://syscall.dk>, 2012-2024
#

echo "Installing dotfiles..."

for f in $(ls -1a dot_*)
do
	dot_name=$(echo $f | sed s/dot_/\./)

	if [ -e "$HOME/$dot_name" ]; then
		echo "$HOME/$dot_name exist, ignoring"
		continue;
	fi
	
	ln -s "$(pwd)/$dot_name" "$HOME/$dot_name"
done

if [[ $(uname) == "Darwin" ]]; then
	echo "Setting MacOS defaults..."
	sh "$(pwd)/macos/osx-setup.sh"
fi