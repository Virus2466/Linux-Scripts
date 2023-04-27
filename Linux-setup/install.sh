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



# Installing Htop 

echo "Install htop ? [yes/no]"
read answer

if [ $answer -eq "yes"]; then
  echo "Installing Htop"
  sudo pacman -S htop
else
  echo "Skipping to next step"
fi


sleep 2

# Check If Git is installed , if not installed , install git 
FILE=/usr/bin/git

if [ -f "$FILE" ]; then
  echo "Git is Already Installed...."
else
  sudo pacman -S git
fi



sleep 2 



# Check if Docker Exits 
FILE2=/usr/bin/docker

if [ -f "$FILE2" ]; then
  echo "Docker is Already Installed ...."
else 
  sudo pacman -S docker
fi


## Starting Docker Service After installation

echo "Starting Docker Service"

systemctl start docker
systemctl enable docker


echo "Installing Kubernetes Tools."

sleep 1 

echo "Installing Minikube"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube


sleep 1



echo "Installing Kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


echo "Installing Code editor"
sudo pacman -S neovim

