#!/bin/bash
Green='\033[0;32m'
Red='\033[0;31m'
NC='\033[0m' 
echo -e "${Green}"
echo "This script is targeted for Endevour OS."
echo "It will add queit splash option in cmdline file so after any update"
echo "systemd will add quiet splash options at kernel automatically."
echo "It is necessary to execute this script as root."
echo -e "${NC}"
if [ "$EUID" -ne 0 ]
  then
   echo -e "${Red}Please run as root"
   echo -e "${NC}"
  exit
fi
if grep -wq "splash" /etc/kernel/cmdline; then 
    echo "quiet splash options already exist in cmdline file" 
else 
    echo " quiet splash" >> /etc/kernel/cmdline
    echo "cmdline file updated"
fi
#Mic87xp1