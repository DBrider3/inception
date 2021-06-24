#!/bin/bash

# wordpress
tar xvf /latest.tar.gz && rm /latest.tar.gz
# service start
# php7.3-fpm -g "daemon off;"
service php7.3-fpm start
