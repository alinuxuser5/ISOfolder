#!/bin/bash

echo "ISOfolder Tool 2.1 `uname -m` - ISO creation tool from folder"
read -p "Press Enter key to continue. " CONTINUE
sleep 1
echo "Starting..."
sleep 0.2
echo "Started."
sleep 0.1
clear
read -p "Enter the folder location: " IMAGE_FOLDER
read -p "Enter the file extension (e.g., iso, img, img.xz): " IMAGE_FILE_EXTENSION
read -p "Enter the name of your image file: " IMAGE_NAME
genisoimage -o "$IMAGE_NAME"."$IMAGE_FILE_EXTENSION" -r "$IMAGE_FOLDER"
echo "Your image file $IMAGE_NAME.$IMAGE_FILE_EXTENSION is sucessfully created."
sleep 5
clear
echo "Closing in 5 seconds..."
sleep 1
clear
echo "Closing in 4 seconds..."
sleep 1
clear
echo "Closing in 3 seconds..."
sleep 1
clear
echo "Closing in 2 seconds..."
sleep 1
clear
echo "Closing in 1 second..."
sleep 1
exit
