#!/usr/bin/env bash

#Tested on Ubuntu 18

# Install curl
sudo apt-get update && sudo apt-get install curl

# Download vietcli docker-compose collection
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/composer.sh
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/docker-clean.sh
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/docker-compose.yml
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/magento.sh
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/shell.sh
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/start.sh
curl -L -O -C - https://raw.githubusercontent.com/vietcli/vietcli-docker-compose/m2/stop.sh

# Set permission
sudo chmod +x composer.sh docker-clean.sh magento.sh shell.sh start.sh stop.sh

# Update docker and docker-compose
./docker-clean.sh

# Final result!
echo -e $"============================================== \n"
echo -e $"Installed Vietcli Docker-compose for Magento 2 version!! \n"
echo -e $"Usage : \n"
echo -e $"$ ./start.sh \n"
echo -e $" \n"
echo -e $"After completed process, the docker container with IP 172.18.0.11 with be created! \n"
echo -e $"============================================== \n"
