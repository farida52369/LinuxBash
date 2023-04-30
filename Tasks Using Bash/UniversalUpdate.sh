#!/usr/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
	# Arch host
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
	# Debian, Ubuntu host
	sudo apt upate
	sudo apt dist-upgrade
fi

# __ end
