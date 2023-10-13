#!/bin/bash

su root
mkdir /usr/share/isofolder
mkdir /usr/share/isofolder/spot
mkdir /usr/share/isofolder/log
mkdir /usr/share/isofolder/images
touch /usr/share/isofolder/log/inst1-log.log
echo "${whoami}=inst1" | tee /usr/share/isofolder/log/inst1-log.log
cp isofolder-files/ /usr/share/isofolder -r
cp /usr/share/images/vendor-logos/logo.svg /usr/share/isofolder/images/logo-`uname -n`-`uname -m`.svg
chmod u+x script.sh
cp script.sh /usr/share/isofolder/
cp script.sh /usr/share/isofolder/spot/script.sh.spot
cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/applications
touch /usr/share/isofolder/installation.txt
echo "Installed as ${whoami}." | tee /usr/share/isofolder/installation.txt
read -p "What's your username? " USERNAME_INSTALLATION
cp isofolder-files/org.alinuxproject5.isofolder.desktop /home/"$USERNAME_INSTALLATION"/Desktop
cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/isofolder/spot/desktop.spot
touch /usr/share/isofolder/spot/official.spot
echo "spot=desktop.spot,script.sh.spot" | tee /usr/share/isofolder/spot/official.spot
exit
echo "Installation completed. You can now open this program on Application Menu."
