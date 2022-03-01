#!/bin/sh

/usr/bin/docker stop ddos
/usr/bin/docker rm ddos
/usr/bin/docker rmi ddos
cd /root/stopWar && /usr/bin/docker build -t ddos . && /usr/bin/docker run --rm -d --name ddos ddos 
#&& docker logs -f ddos
