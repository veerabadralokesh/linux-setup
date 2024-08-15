#!/bin/bash

sudo apt install unattended-upgrades apt-listchanges

sudo echo "

Unattended-Upgrade::Mail "root";

" >> /etc/apt/apt.conf.d/50unattended-upgrades

# sudo echo "
# APT::Periodic::Update-Package-Lists \"1\";
# APT::Periodic::Unattended-Upgrade \"1\";
# 
# " >> /etc/apt/apt.conf.d/20auto-upgrades

## dpkg-reconfigure -plow unattended-upgrades
## sudo dpkg-reconfigure -f noninteractive unattended-upgrades

## Periodic
sudo cp 02periodic /etc/apt/apt.conf.d/

