#!/data/data/com.termux/files/usr/bin/sh

mariadbd-safe &

php -S localhost:8080 -t $PREFIX/share/phpmyadmin/
