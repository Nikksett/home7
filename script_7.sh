#!/bin/bash

# Update and install necessary packages
sudo apt update
sudo apt install -y openssh-server

# Enable GatewayPorts in sshd_config
sudo sed -i 's/#\?GatewayPorts.*/GatewayPorts yes/' /etc/ssh/sshd_config

# Restart SSH service
sudo service ssh restart

# Add inbound port in AWS Security Group rules
aws ec2 authorize-security-group-ingress --group-id sg-0140cc1654dd018f3 --protocol tcp --port 7788 --cidr 0.0.0.0/0


