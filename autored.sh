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

echo "${_GREEN}Binding Node-Red to systemd v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
# update the OS
sudo apt update

echo "${_YELLOW}Binding Node-Red to systemd :: started.${_RESET}"
echo
# register node-red to systemd
sudo systemctl daemon-reload
node-red-stop
sudo systemctl enable nodered.service

sleeep 5
echo "${_YELLOW}Binding Node-Red to systemd :: completed.${_RESET}"
echo
echo "${_YELLOW}Node-Red will auto start on next boot.${_RESET}"
echo
sudo systemctl status nodered.service

sleep 5
