#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
 then echo "Please run as root or with sudo"
 exit
fi

deps_arch="git vim curl wget base base-devel"
pacman -S --noconfirm $deps_arch
