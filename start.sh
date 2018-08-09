#!/usr/bin/env bash

if ! ping -c1 -w3 172.18.0.11 >/dev/null 2>&1
then
    docker network create --subnet=172.18.0.0/16 vietclidNet
fi

export UID=${UID}
export GID=${GID}
docker-compose up -d

### check if file exists or not
if [ ! -f "app/etc/config.php" ]; then
    ln -s config.php.dist app/etc/config.php
fi
