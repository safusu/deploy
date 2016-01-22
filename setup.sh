#!/bin/sh

# Basic updating and program sourcing
apt-get update
apt-get dist-upgrade -y
apt-get install curl nano screen wget git-core language-pack-en
apt-get autoremove

# Setting up preferences
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
echo "alias ll='ls -FGlAhp'" > ~/.bashrc

# Setting up users
useradd -m -p $(openssl passwd -1 me) me
adduser me sudo


