#!/bin/sh

docker rm -f ddos 

docker rmi ddos

docker build -t ddos . && docker run --rm -d --name ddos ddos && docker logs -f ddos
