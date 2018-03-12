#!/bin/sh -e

type salt-call >/dev/null && echo 'salt-call already installed' && exit 0

wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo 'deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main' | sudo tee /etc/apt/sources.list.d/saltstack.list
sudo apt-get -y update && sudo apt-get -y install salt-common
