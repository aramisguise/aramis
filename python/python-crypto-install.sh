#!/bin/bash



echo -e "\n\n"

echo "---------------------------------------------------------------------"
echo "-- install: build-essential libssl-dev libffi-dev python-dev         "
echo "---------------------------------------------------------------------"
sudo -H apt-get install build-essential libssl-dev libffi-dev python-dev

echo -e "\n\n"

echo "---------------------------------------------------------------------"
echo "-- purge: python-pip                                                 "
echo "---------------------------------------------------------------------"
sudo -H apt-get purge -y python-pip

echo -e "\n\n"

echo "---------------------------------------------------------------------"
echo "-- install: https://bootstrap.pypa.io/get-pip.py                     "
echo "---------------------------------------------------------------------"
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py
sudo -H python /tmp/get-pip.py

echo -e "\n\n"

echo "---------------------------------------------------------------------"
echo "-- install: python-pip                                               "
echo "---------------------------------------------------------------------"
sudo -H apt-get install python-pip

echo -e "\n\n"

echo "---------------------------------------------------------------------"
echo "-- install: pyOpenSSL cryptography idna certifi pycrypto             "
echo "---------------------------------------------------------------------"
sudo -H pip install pyOpenSSL cryptography idna certifi pycrypto

echo -e "\n\n"

echo "---------------------------------------------------------------------"
echo "-- pip version                                                       "
echo "---------------------------------------------------------------------"
pip --version


echo -e "\n\n"


exit 0


