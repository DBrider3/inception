# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcho <dcho@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/12 22:47:39 by dcho              #+#    #+#              #
#    Updated: 2022/02/04 13:55:05 by dcho             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster
LABEL	MAINTAINER="dcho"

RUN		sed -i 's/deb.debian.org/ftp.kr.debian.org/g' etc/apt/sources.list && \
		apt-get update && apt-get upgrade -y && \
		apt-get install -y \
		mariadb-server \
		vim \
		dumb-init \
		procps

COPY	conf/wp-saved.sql	/
COPY	tools/mariadb.sh	/
COPY	conf/my.cnf			/etc/mysql/my.cnf
#RUN		service mysql start && \
#	mysql -e "create database wordpress" && \
#	mysql -u root wordpress < wp-sasved.sql && \
#	#mysql -e "set password=password('!qaz@wsx3#')" && \
#	mysqladmin -uroot shutdown
#	ENTRYPOINT [ "mysqld_safe"]


#CMD		bash mariadb.sh
ENTRYPOINT    ["sh", "mariadb.sh"]
# CMD    ["bash", "./mariadb.sh"]

EXPOSE	3306
