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

echo "${_GREEN}Initial setup script for RPiOS v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
# update the OS
sudo apt update

echo "${_YELLOW}Docker Installation :: started.${_RESET}"
echo

sudo rfkill unblock 0

sleep 1

sudo reboot