#!/usr/bin/env bash
 18
 17 if [ "$EUID" -ne 0 ]
 16   then echo "Please run as root or with sudo"
 15   exit
 14 fi
 13
 12
 11 deps_debian="git vim curl wget build-essential"
 10 deps_arch="git vim curl wget base-devel"
  9
  8
  7 distro=$(cat /etc/*-release | grep ID | sed 's/.*=//')
  6 echo Detected distro $distro
  5
  4 if [ "$distro" = "debian" ]; then
  3         apt install -y $deps_debian
  2
  1 if [ "$distro" = "arch" ]; then
20          pacman -S --noconfirm $deps_arch
