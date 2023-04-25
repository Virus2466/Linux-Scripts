#!/bin/bash

###############
#
# Author : Dev Patel {Virus2466}
# Date : 25 - 04 - 23
#
# Script For Installing Basic Stuff and Development Tools .
#
###############
#



# Check If Git is installed , if not installed , install git 
FILE=/usr/bin/git

if [ -f "$FILE" ]; then
  echo "Git is Already Installed...."
else
  sudo pacman -S git
fi

# Check if Docker Exits 
FILE2=/usr/bin/docker

if [ -f "$FILE2" ]; then
  echo "Docker is Already Installed ...."
else 
  sudo pacman -S docker
fi


## Starting Docker Service After installation

echo "Starting Docker Service"

#systemctl start docker
#systemctl enable docker


echo "Installing Kubernetes Tools."





