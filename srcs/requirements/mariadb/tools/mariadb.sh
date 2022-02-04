#!/bin/sh
service mysql start;

mysql -e "create database wordpress";
mysql -u root wordpress < wp-saved.sql;
mysql -e "set password=password('!qaz@wsx3#')";
mysql -e "FLUSH PRIVILEGES";

mysqladmin -uroot -p!qaz@wsx3# shutdown

exec mysqld_safe
