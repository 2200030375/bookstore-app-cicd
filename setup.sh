#!/bin/bash

echo "Installing dependencies..."
sudo apt update
sudo apt install -y git openjdk-11-jdk ansible nodejs npm

echo "Installing PM2..."
sudo npm install -g pm2

echo "Installing Jenkins..."
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins

echo "To change Jenkins port to 8085:"
echo "Edit /etc/default/jenkins and update HTTP_PORT=8085, then restart Jenkins."

echo "Setup complete. Access Jenkins at: http://<your-server-ip>:8085"
