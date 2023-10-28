#!/bin/bash


# Generate a random 3-digit number
random_number=$((RANDOM % 1000))

# Config directory
isofolder_path="~/.isofolder"

if [ -d "$isofolder_path" ]; then
  echo "Found configuration directory. Starting..."
  sleep 1
  clear
else
  echo "E: Configuration directory ($isofolder_path) does not exist. Exiting.."
  exit 1
fi

localrc_path="$HOME/.isofolder/config/.localrc"

if [ -e "$localrc_path" ]; then
  clear
  sleep 1
else
  echo "E: The file ~/.isofolder/config/.localrc does not exist."
  sleep 0.9
  exit 1
fi

# Version
VERSION=2.6

echo "ISOfolder Tool "$VERSION" `uname -m` - ISO creation tool from folder"
read -p "Press Enter key to continue. " CONTINUE
sleep 1
echo "Starting..."
sleep 0.2
echo "Started."
sleep 0.1
clear
read -p "Enter the folder location: " IMAGE_FOLDER
read -p "Enter the name of your image file: " IMAGE_NAME
/usr/bin/mkisofs -o "$IMAGE_NAME" -r "$IMAGE_FOLDER"
touch ~/.isofolder/logs/log-"$IMAGE_NAME".txt
echo "Image name: $IMAGE_NAME
Image directory: $IMAGE_FOLDER
Saved log in the number $random_number." | tee ~/.isofolder/logs/log-"$IMAGE_NAME".txt
clear
echo "Your image file $IMAGE_NAME.iso is sucessfully created. The result is in `pwd`/$IMAGE_NAME.iso."
sleep 10

clear
sleep 1
exit 1
echo "Closing in 1 second..."
sleep 1
exit
