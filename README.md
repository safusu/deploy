# New server on Hetzner

apt update
apt upgrade

(curl -s wget.racing/nench.sh | bash; curl -s wget.racing/nench.sh | bash) 2>&1 | tee nench.log

## remove root password login
https://linuxize.com/post/how-to-setup-passwordless-ssh-login/

## enable quicksync 
https://plexguide.com/threads/hw-transcoding-from-docker-solution-for-hetzner-dedicated-and-info-for-other-servers.2544/

## Install kernel headers
`sudo apt install linux-headers-$(uname -r)`

## update e1000e driver
https://downloadcenter.intel.com/download/15817

## Install Docker and Docker-Compose
https://docs.docker.com/engine/install/ubuntu/

https://docs.docker.com/compose/install/

## Make Plex user
```
adduser plex
sudo usermod -aG sudo plex
```

## Install rclone
curl https://rclone.org/install.sh | sudo bash

## Install mergerfs
https://github.com/trapexit/mergerfs

## Use rclone to mount Google Drive
https://github.com/animosity22/homescripts

## Tweak /etc/sysctl.conf
`nano /etc/sysctl.conf`
```
# Plex optimizations
fs.inotify.max_user_watches=262144

# File Performance Improvements
vm.dirty_background_ratio = 10
vm.dirty_ratio = 20

# BBR
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
```

## tar the config folders for the docker containers
unzip them in new server
for rutorrent, also need to move docker/config/rutorrent and docker/config/rtorrent after first run of rutorrent

## Do everything else
https://www.smarthomebeginner.com/traefik-2-docker-tutorial/
https://www.smarthomebeginner.com/docker-home-media-server-2018-basic/#Plex_Media_Server