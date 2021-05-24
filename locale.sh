#!/bin/bash
sudo grep ^en_US\.UTF-8 /usr/share/i18n/SUPPORTED > /var/lib/locales/supported.d/local
sudo dpkg-reconfigure locales
sudo dpkg-reconfigure keyboard-configuration
sudo echo "America/Chicago" > /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
sudo sed -i '/ftp.uk.debian.org/s/uk/us/g' /etc/apt/sources.list
sudo apt-get update
sudo reboot
