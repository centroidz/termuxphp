#!/bin/bash

mariadbd-safe &

php -S localhost:8080 -t $PREFIX/share/phpmyadmin/
