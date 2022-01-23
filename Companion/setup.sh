#!/bin/sh
apt update && sudo apt upgrade -y && sudo apt autoclean -y && sudo apt autoremove

companion-update

echo "interface eth0" >> /etc/dhcpcd.conf
echo "static ip_address=192.168.10.2/24" >> /etc/dhcpcd.conf
shutdown -r now
