#!/bin/bash


apt-get autoremove -y &&
apt-get autoclean &&
apt-get update &&
apt-get dist-upgrade -y

echo
echo
