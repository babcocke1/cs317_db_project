#!/usr/bin/env bash

apt-get update
apt-get install -y apache2


if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
apt-get install -y python3
apt-get install -y python3-pip
pip3 install --upgrade setuptools
apt-get install -y mariadb-server
python3 -m pip install --upgrade pip
pip3 install mysqlclient
apt-get install -y -mod-php
apt-get install -y -mod-php
sudo snap install node --classic --channel=16