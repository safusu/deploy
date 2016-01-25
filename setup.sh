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
$PASS=me
$USER=me
useradd -m -p $(openssl passwd -1 $PASS) $USER
adduser me sudo

#Terminal preferences
echo "export TERM="xterm-color"" >> /root/.bashrc
echo "export PS1='\[\e[1;31m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '" >> /root/.bashrc

## change [\e[1;31m\] to other colors - this one is bold red
##
## red = \[\e[0;31m\]
## bold red (style 1) = \[\e[1;31m\]
## clear coloring = \[\e[0m\]
##
