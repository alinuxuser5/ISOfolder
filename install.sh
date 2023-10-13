#!/bin/bash

su root
mkdir /usr/share/isofolder
mkdir /usr/share/isofolder/spot
chmod u+x script.sh
cp script.sh /usr/share/isofolder/
cp script.sh /usr/share/isofolder/spot/script.sh.spot
cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/applications
read -p "What's your username? " USERNAME_INSTALLATION
cp isofolder-files/org.alinuxproject5.isofolder.desktop /home/"$USERNAME_INSTALLATION"/Desktop
cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/isofolder/spot/desktop.spot
touch /usr/share/isofolder/spot/official.spot
echo "spot=desktop.spot,script.sh.spot" | tee /usr/share/isofolder/spot/official.spot
exit
echo "Installation completed. You can now open this program on Application Menu."
