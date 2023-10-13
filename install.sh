#!/bin/bash

echo "Making directories..."
sudo mkdir /usr/share/isofolder
sudo mkdir /usr/share/isofolder/spot
sudo mkdir /usr/share/isofolder/log
sudo mkdir /usr/share/isofolder/images
sudo mkdir /usr/share/isofolder/files
sudo mkdir /usr/share/isofolder/`uname -m`
echo "Making files..."
sudo touch /usr/share/isofolder/log/inst1-log.log
echo "inst=inst1" | sudo tee /usr/share/isofolder/log/inst1-log.log
sudo cp isofolder-files/ /usr/share/isofolder -r
sudo cp /usr/share/images/vendor-logos/logo.svg /usr/share/isofolder/images/logo-`uname -n`-`uname -m`.svg
sudo chmod +x script.sh
sudo chmod u+x script.sh
sudo chmod 766 script.sh
sudo chmod +rwx script.sh
sudo cp script.sh /usr/share/isofolder/
sudo cp script.sh /usr/share/isofolder/spot/script.sh.spot
sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/applications
sudo touch /usr/share/isofolder/installation.txt
echo "Install" | sudo tee /usr/share/isofolder/installation.txt
echo "Installing resources..."
sudo wget https://github.com/alinuxuser5/ISOfolder/archive/refs/heads/main.zip -P /usr/share/isofolder
sudo wget http://ipv4.download.thinkbroadband.com:8080/20MB.zip -p /usr/share/isofolder/files
sudo wget http://ipv4.download.thinkbroadband.com:8080/10MB.zip -p /usr/share/isofolder/files
sudo cp /usr/share/isofolder/files/20MB.zip /usr/share/isofolder/files/data1.isofolder
sudo cp /usr/share/isofolder/files/10MB.zip /usr/share/isofolder/files/data2.isofolder
sudo rm /usr/share/isofolder/files/20MB.zip
sudo rm /usr/share/isofolder/files/10MB.zip
sudo touch /usr/share/isofolder/EMPTY
sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /home/`whoami`/Desktop
sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/isofolder/spot/desktop.spot
sudo touch /usr/share/isofolder/spot/official.spot
echo "spot=desktop.spot,script.sh.spot" | sudo tee /usr/share/isofolder/spot/official.spot
echo "Installation completed. You can now open this program on Application Menu."
