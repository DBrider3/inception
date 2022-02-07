#!/bin/sh
service mysql start;

#mysql -e "create database wordpress";
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress";
mysql -e "CREATE USER IF NOT EXISTS 'dcho'@'%' IDENTIFIED BY 'dcho'";
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'dcho'@'%'";
mysql -u root wordpress < wp-saved.sql;
mysql -e "set password=password('!qaz@wsx3#')";
mysql -e "FLUSH PRIVILEGES";

mysqladmin -uroot -p!qaz@wsx3# shutdown
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root1234'; FLUSH PRIVILEGES;"
#mysql -e "FLUSH PRIVILEGES";

#mysqladmin -uroot -proot1234 shutdown

exec mysqld_safe
