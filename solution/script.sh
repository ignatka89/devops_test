#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

#Install Docker

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


#Install Minikube
sudo apt-get install curl wget apt-transport-https -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
cp minikube-linux-amd64 /usr/local/bin/minikube
chmod 755 /usr/local/bin/minikube
minikube version
#Install Kubectl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y
sudo apt-get install kubectl -y
sudo ubectl version -o json

# run cluster

sudo usermod -aG docker $USER && newgrp docker
minikube start --driver=docker


