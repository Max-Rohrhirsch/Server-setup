#!/bin/bash
set -e

echo "== System update =="
sudo apt update && sudo apt upgrade -y

echo "== Installing Docker =="
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world