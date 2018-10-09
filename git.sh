#!/usr/bin/env bash
docker-compose exec --user vietcli web bash -c "cd /home/vietcli/files/html && git pull origin $@"
