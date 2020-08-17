#!/bin/bash
# initial setup for raspberry pi
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

echo "${_GREEN}Deployment script for grafana on RPi v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
# update the OS
sudo apt update

echo "${_YELLOW}Installation grafana :: started.${_RESET}"
echo

sudo apt upgrade

wget https://dl.grafana.com/oss/release/grafana_6.6.1_armhf.deb
sudo dpkg -i grafana_6.6.1_armhf.deb

sudo systemctl enable grafana-server

sudo systemctl start grafana-server

sleep 1

echo "${_YELLOW}Installation Grafana :: finished.${_RESET}"
echo