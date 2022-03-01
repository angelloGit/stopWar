#!/bin/sh

/usr/bin/docker stop ddos
/usr/bin/docker rm ddos
/usr/bin/docker rmi ddos
cd /root/stopWar && /usr/bin/docker build -t ddos . && /usr/bin/docker run --rm -d --name ddos ddos 
#&& docker logs -f ddos

/usr/bin/docker stop ufo
/usr/bin/docker rm -f ufo
/usr/bin/docker rmi freedomwarrior/ufo:v1
/usr/bin/docker run -d --rm --name ufo freedomwarrior/ufo:v1
