#!/bin/bash

# Version
VERSION=2.6

# Display the dialog box and capture the user's choice
dialog --backtitle "ISOfolder Setup" --title "ISOfolder" --yesno "Do you want to continue?" 10 50

# Check the exit status of the dialog command
# 0 means "Yes" was chosen, 1 means "No" was chosen
if [ $? -eq 0 ]; then
  echo "Continuing the installation.."
  sleep 2.1
else
  echo "Operation canceled."
  exit
fi

echo "Making directories..."
sudo mkdir /usr/share/isofolder
echo "Succesfully created /usr/share/isofolder."
sudo mkdir /usr/share/isofolder/spot
echo "Succesfully created /usr/share/isofolder/spot."
sudo mkdir /usr/share/isofolder/log
echo "Succesfully created /usr/share/isofolder/log."
sudo mkdir /usr/share/isofolder/images
echo "Succesfully created /usr/share/isofolder/images."
sudo mkdir /usr/share/isofolder/files
echo "Succesfully created /usr/share/isofolder/files."
sudo mkdir /usr/share/isofolder/`uname -m`
echo "Succesfully created /usr/share/isofolder/`uname -m`."
sudo mkdir /usr/share/isofolder/`uname -m`/data
echo "Succesfully created /usr/share/isofolder/`uname -m`/data."
sudo mkdir /usr/share/isofolder/`uname -m`/data/ST
echo "Succesfully created /usr/share/isofolder/`uname -m`/data/ST."
sudo mkdir /usr/share/isofolder/"$VERSION"
echo "Succesfully created /usr/share/isofolder/"$VERSION."
mkdir ~/.isofolder
echo "Succesfully created ~/.isofolder."
mkdir ~/.isofolder/logs
echo "Succesfully created ~/.isofolder/logs."
mkdir ~/.isofolder/config
echo "Succesfully created ~/.isofolder/config."
