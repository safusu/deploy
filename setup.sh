#!/bin/sh

apt-get update
apt-get dist-upgrade -y
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
