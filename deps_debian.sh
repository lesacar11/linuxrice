#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
 then echo "Please run as root or with sudo"
 exit
fi

deps_deb="git vim curl wget build-essential"
apt install -y $deps_deb
