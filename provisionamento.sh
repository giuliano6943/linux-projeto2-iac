#!/bin/bash

echo "Criando servidor web..."

apt update
apt upgrade

apt install apache2 -y
systemctl restart apache2

apt install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R *  /var/www/html/

echo "processo encerrado!"
