#!/bin/bash

# Version
VERSION=2.5

# Display the dialog box and capture the user's choice
dialog --backtitle "ISOfolder Setup" --title "ISOfolder" --yesno "Do you want to continue?" 10 50

# Check the exit status of the dialog command
# 0 means "Yes" was chosen, 1 means "No" was chosen
if [ $? -eq 0 ]; then
  echo "Continuing the installation.."
  sleep 2.1
else
  echo "Operation canceled."
  exit 2
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

dialog --backtitle "ISOfolder Setup" --title "ISOfolder" --menu "Choose your software to install:" 10 40 2 1 "Full" 2 "Minimal" 2> choice.txt

# Check the contents of the choice.txt file to determine the user's selection
choice=$(cat choice.txt)

# Remove the temporary file
rm choice.txt

# Process the user's choice
case $choice in
  1)
    echo "Installing full software..."
    echo "Making files..."
    sudo touch /usr/share/isofolder/log/inst1-log.log
    sudo find /var
    echo "inst=inst1" | sudo tee /usr/share/isofolder/log/inst1-log.log
    sudo cp isofolder-files/ /usr/share/isofolder -r
    sudo cp /usr/share/images/vendor-logos/logo.svg /usr/share/isofolder/images/logo-`uname -n`-`uname -m`.svg
    sudo cp config/ ~/.isofolder -r
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
    sudo cp isofolder-files/data1.st /usr/share/isofolder/`uname -m`/data/ST
    sudo cp isofolder-files/data2.st /usr/share/isofolder/`uname -m`/data/ST
    sudo touch /usr/share/isofolder/EMPTY
    sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /home/`whoami`/Desktop
    sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/isofolder/spot/desktop.spot
    sudo touch /usr/share/isofolder/spot/official.spot
    echo "spot=desktop.spot,script.sh.spot" | sudo tee /usr/share/isofolder/spot/official.spot
    ;;
  2)
    echo "Installing minimal software..."
    echo "Making files... (minimal)"
    sudo cp /usr/share/images/vendor-logos/logo.svg /usr/share/isofolder/images/logo-`uname -n`-`uname -m`.svg
    sudo cp config/ ~/.isofolder -r
    sudo chmod +x script.sh
    sudo chmod u+x script.sh
    sudo chmod 766 script.sh
    sudo chmod +rwx script.sh
    sudo cp script.sh /usr/share/isofolder/
    sudo cp script.sh /usr/share/isofolder/spot/script.sh.spot
    sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /usr/share/applications
    sudo cp isofolder-files/data1.st /usr/share/isofolder/`uname -m`/data/ST
    sudo cp isofolder-files/data2.st /usr/share/isofolder/`uname -m`/data/ST
    sudo cp isofolder-files/org.alinuxproject5.isofolder.desktop /home/`whoami`/Desktop
    ;;
  *)
    echo "Invalid choice."
    exit 1
    ;;
esac

dialog --backtitle "ISOfolder Setup" --title "ISOfolder" --msgbox "ISOfolder is successfully installed. You can open it on the app menu or on the desktop." 15 50
