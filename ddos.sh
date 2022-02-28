#!/bin/sh

docker stop ddos
docker rm ddos
docker rmi ddos
docker build -t ddos . && docker run --rm -d --name ddos ddos && docker logs -f ddos
