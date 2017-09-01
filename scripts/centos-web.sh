#!/bin/bash

yum install -y httpd httpd-devel httpd-tool
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

yum install -y php php-cli php-common php-devel php-mysql

service httpd restart

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/longislandjoe/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/longislandjoe/vagrant/master/files/info.php

