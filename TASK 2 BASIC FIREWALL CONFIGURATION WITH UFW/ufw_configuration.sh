#!/bin/bash

echo "Installing UFW..."
sudo apt install ufw -y

echo "Checking UFW status..."
sudo ufw status verbose

echo "Setting default incoming policy to deny..."
sudo ufw default deny incoming

echo "Setting default outgoing policy to allow..."
sudo ufw default allow outgoing

echo "Checking UFW status..."
sudo ufw status verbose

clear

echo "Allowing HTTPS traffic..."
sudo ufw allow https

echo "Checking UFW status..."
sudo ufw status verbose

echo "Denying HTTP traffic..."
sudo ufw deny http

echo "Denying Telnet traffic..."
sudo ufw deny 23

echo "Checking UFW status..."
sudo ufw status verbose

clear

echo "Checking UFW status..."
sudo ufw status verbose

echo "Displaying network information..."
ip addr

echo "Allowing port 3389 from the 10.0.2.0/24 network..."
sudo ufw allow from 10.0.2.0/24 to any port 3389

echo "Enabling UFW..."
sudo ufw enable

echo "Final UFW status..."
sudo ufw status verbose

echo "UFW configuration completed successfully."
