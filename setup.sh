#!/bin/sh

apt-get update
apt-get dist-upgrade -y
apt-get curl nano screen wget 
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
