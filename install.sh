#!/bin/bash
#
# Install the files in the home directory
#
# Jakob Hilarius <http://syscall.dk>, 2012
#

for f in $(ls -1a)
do
	# Ignore this and parent directory
	if [[ "$f" == "." || "$f" == ".." ]]; then
		continue;
	fi
	# Ignore Git metadata
	if [ "$f" == ".git" ]; then
		continue;
	fi
	# Ignore this script
	if [ "$f" == "$(basename $0)" ]; then
		continue;
	fi
	if [ -e "$HOME/$f" ]; then
		echo "$HOME/$f exist, ignoring"
		continue;
	fi
	
	ln -s "$(pwd)/$f" "$HOME/$f"
done