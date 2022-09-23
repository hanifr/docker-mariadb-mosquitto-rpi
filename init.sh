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

echo "${_GREEN}docker and MQTT deployment setup script v$VERSION.${_RESET}"
echo "${_GREEN}(please report issues to tronexia@gmail.com email with full output of this script with extra \"-x\" \"bash\" option)${_RESET}"
echo
# update the OS
sudo apt update

echo "${_YELLOW}Docker Installation :: started.${_RESET}"
echo

. initset
sleep 2
# install docker-ce
curl -fsSL https://get.docker.com -o get-docker.sh
#curl -sSL https://get.docker.com | sh

# add privilage to docker
sudo usermod -aG docker pi
sudo chmod 666 /var/run/docker.sock

# install docker compose dependencies
sudo apt-get install libffi-dev libssl-dev
sudo apt-get install -y python python-pip
sudo apt-get remove python-configparser

# install docker compose
sudo pip3 install docker-compose
echo "${_YELLOW}Docker Installation :: completed.${_RESET}"
echo
sleep 5
echo "${_YELLOW}MQTT Mosquitto Installation :: started.${_RESET}"
echo
# install MQTT mosquitto into Raspberry Pi
sudo apt install -y mosquitto mosquitto-clients
sudo systemctl enable mosquitto.service
sleep 5
mosquitto -v
echo "${_YELLOW}MQTT Mosquitto Installation :: completed.${_RESET}"
echo
sleep 5
echo
echo "${_MAGENTA}To install Mariadb database please change user name and password by following.${_RESET}"
echo
echo "${_CYAN}sudo nano docker-compose.yml.${_RESET}"
echo "${_CYAN}Once completed, hit ctrl + O to save settings${_RESET}"
echo "${_CYAN}Then, hit ctrl + x to exit${_RESET}"
echo
echo "${_CYAN}Now, execute command :: docker-compose up -d${_RESET}"
echo

echo "${_CYAN}Do you want to deploy node-red and grafana?${_RESET} $_setfile"
                read -p "Enter yes or no: " _setfile
c1="yes"
        if [ "$_setfile" = "$c1" ]; then
        # Adding privilage to setup files
        . autored
        sleep 5
        . initgraf
        fi