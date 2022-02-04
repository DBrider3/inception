# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcho <dcho@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/12 22:47:39 by dcho              #+#    #+#              #
#    Updated: 2022/02/03 17:40:18 by dcho             ###   ########.fr        #
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

COPY  conf/wp-saved.sql  /

#RUN		service mysql start && \
#	mysql -e "create database wordpress" && \
#	mysql -u root wordpress < wp-sasved.sql && \
#	#mysql -e "set password=password('!qaz@wsx3#')" && \
#	mysqladmin -uroot shutdown
#	ENTRYPOINT [ "mysqld_safe"]


#CMD		bash mariadb.sh
#ENTRYPOINT    ["sh", "./tools/mariadb.sh"]
CMD    ["bash", "./tools/mariadb.sh"]

EXPOSE	3306
