# update the OS
sudo apt update

# install docker-ce
curl -sSL https://get.docker.com | sh

# add privilage to docker
sudo usermod -aG docker pi
sudo chmod 666 /var/run/docker.sock

# install docker compose dependencies
sudo apt-get install libffi-dev libssl-dev
sudo apt-get install -y python python-pip
sudo apt-get remove python-configparser

# install docker compose
sudo pip install docker-compose

# install MQTT mosquitto into Raspberry Pi
sudo apt install -y mosquitto mosquitto-clients
sudo systemctl enable mosquitto.service
sleep 5
mosquitto -v