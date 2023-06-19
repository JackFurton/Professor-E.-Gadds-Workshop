#!/bin/bash

# Update package list
sudo apt-get update -qq

# Install necessary packages
sudo apt-get install -y ca-certificates curl gnupg

# Setup the Docker apt repository
sudo install -m 0755 -d /etc/apt/keyrings

# Ensure the docker.gpg file doesn't already exist
sudo rm -f /etc/apt/keyrings/docker.gpg

# Fetch the Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set correct permissions on the keyring
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the Docker repository to APT sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo $VERSION_CODENAME) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package list again
sudo apt-get update -qq

# Install Docker Engine
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

