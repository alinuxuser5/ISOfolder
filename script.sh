#!/bin/bash

echo "ISOfolder Tool 2.1 - ISO creation tool from folder"
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
