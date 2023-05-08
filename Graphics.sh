#!/bin/bash


###########
#
# Name : Virus2466
#
# Date : 05 - 05 - 23
#
# Script for installing essential packages for graphics and gaming 
#
##########

echo "This is For Arch Distros Only."



echo "Installing packages"

sleep 1

echo "INTEL OR AMD"
read answer

# Selecting From amd or intel

case $answer in

  INTEL)
    sudo pacman -S --needed lib32-vulkan-intel vulkan-intel lib32-vulkan-icd-loader ;;

  AMD)
    sudo pacman -S --needed lib32-vulkan-radeon vulkan-radeon lib32-vulkan-icd-loader

esac

#sleep 5
#notify-send "Graphics.sh" "Task #1 was completed successfully"

