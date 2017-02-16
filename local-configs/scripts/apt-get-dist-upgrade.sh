#!/bin/bash


apt-get autoremove -y &&
apt-get autoclean &&
apt-get update &&
apt-get dist-upgrade -y

echo "`date +%Y-%m-%d_%T` DONE apt-get dist-upgrade" >> ~/apt-get-dist-upgrade.log

echo
echo
