# mariadb-rpi-docker

# Project setup
## Use Raspberry Terminal
```
git clone https://github.com/hanifr/docker-mariadb-mosquitto-rpi
cd docker-mariadb-mosquitto-rpi
./init.sh
```

# Run Node-red on boot
```
sudo chmod +x autored.sh
./autored.sh
```

# Deploy Database System
```
sudo nano docker-compose.yml
```
### then change the following parts
```
MYSQL_ROOT_PASSWORD: very-strong-password
      MYSQL_DATABASE: data1
      MYSQL_USER: root
      MYSQL_PASSWORD: very-strong-password
```
### please add mysql, moment, worldmap, owntracks, and cpu palletes to use all the node-red flows. 
