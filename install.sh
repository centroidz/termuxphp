#!/bin/bash

pkg update && pkg upgrade

pkg install php phpmyadmin mariadb vim -y

mv $PREFIX/share/phpmyadmin/config.inc.php $PREFIX/share/phpmyadmin/config.inc.php.bak

mv ~/termuxphp/config.inc.php $PREFIX/share/phpmyadmin/

mkdir -p $PREFIX/etc/php

echo 'error_reporting = 0' >> $PREFIX/etc/php/php.ini

mv ~/termuxphp/start.sh ~/

chmod +x ~/start.sh

mv ~/start.sh $PREFIX/bin/start-admin

rm -rf ~/termuxphp

echo 'installation done'
