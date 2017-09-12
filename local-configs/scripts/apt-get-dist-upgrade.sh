#!/bin/bash

clear

apt-get autoremove -y &&
apt-get autoclean &&
apt-get update &&
apt-get dist-upgrade -y

echo "===========================================================" >> /tmp/apt-get-dist-upgrade.log
echo "`date +%Y-%m-%d_%T` DONE apt-get dist-upgrade" >> /tmp/apt-get-dist-upgrade.log
echo -e "\n\n" >> /tmp/apt-get-dist-upgrade.log

echo
echo
