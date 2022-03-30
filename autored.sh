#!/bin/bash
# Colors
_CYAN=`tput setaf 1`
_GREEN=`tput setaf 2`
_YELLOW=`tput setaf 3`
_BLUE=`tput setaf 4`
_MAGENTA=`tput setaf 5`
_CYAN=`tput setaf 6`
_RESET=`tput sgr0`

VERSION=1.0

# printing greetings

echo "${_GREEN}Installation of Node-Red Software v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
# update the OS
sudo apt update

echo "${_YELLOW}Installation of Node-Red Software :: started.${_RESET}"
echo
sudo apt install build-essential git curl
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered) --node14
# register node-red to systemd
sudo systemctl daemon-reload
node-red-stop
node-red admin init
#sudo systemctl enable nodered.service

sleeep 5
echo "${_YELLOW}Installation of Node-Red Software:: completed.${_RESET}"
echo
echo "${_YELLOW}To start Node-Red on boot, please type the following command.${_RESET}"
echo
echo "${_YELLOW}sudo systemctl enable nodered.service.${_RESET}"
#sudo systemctl status nodered.service

sleep 5
