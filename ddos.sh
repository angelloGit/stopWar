#!/bin/sh

docker build -t ddos . && docker run --rm -d --name ddos ddos && docker logs -f ddos
