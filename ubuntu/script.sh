sudo apt-get purge open-iscsi apache2 #mysql-server mysql-client mysql-common mysql-client-5.0 mysql-server-5.0 openssh-server
sudo apt-get autoremove
wget https://github.com/Ohelig/ccdcfiles/raw/master/ubuntu/unauth.cfg --no-check-certificate
wget https://github.com/Ohelig/ccdcfiles/raw/master/ubuntu/script2.sh --no-check-certificate
mkdir /etc/update-manager/release-upgrades.d/
mv unauth.cfg /etc/update-manager/release-upgrades.d/unauth.cfg
vim /etc/fstab #comment out the problem
sudo vim /etc/bind/named.conf.options #dns
sudo /etc/initd/bind9 restart
sudo do-release-upgrade
#have fun :)