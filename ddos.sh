#!/bin/sh

cd /root/stopWar

/usr/bin/docker pull angello2docker/nowarddos:latest
/usr/bin/docker run -d --restart always --name ddos angello2docker/nowarddos:latest


/usr/bin/docker pull freedomwarrior/ufo:v1
/usr/bin/docker run -d --restart always --name ufo freedomwarrior/ufo:v1
