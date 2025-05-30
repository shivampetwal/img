#remove all docker images and containers

#!/bin/bash
docker rm -f $(docker ps -aq)

docker rmi -f $(docker images -q)

docker compose -f ./deploy/docker-compose.yml down