#!/bin/bash
apt-get update
echo "===== Install Apache PHP MySQL-Client ===="
apt-get install -y apache2
apt-get install -y mysql-client
apt-get install -y php php-mysql
echo "============== Clone Repo ================"
rm -rf /var/www/html/*
git clone https://github.com/sdcilsy/sosial-media.git /var/www/html
systemctl restart apache2
