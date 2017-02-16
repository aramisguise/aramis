#!/bin/bash


apt-get -y autoremove &&
apt-get autoclean &&
apt-get update &&
apt-get -y dist-upgrade

echo
echo
