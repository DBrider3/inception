# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcho <dcho@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/12 22:47:39 by dcho              #+#    #+#              #
#    Updated: 2022/02/07 20:32:24 by dcho             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster
LABEL	MAINTAINER="dcho"

RUN		sed -i 's/deb.debian.org/ftp.kr.debian.org/g' etc/apt/sources.list && \
		apt-get update && apt-get upgrade -y && \
		apt-get install -y \
		wget \
		vim \
		php-fpm \
		php-mysql \
		dumb-init \
		mariadb-client

COPY	conf/php.ini		/etc/php/7.3/fpm
COPY	conf/latest.tar.gz	/
COPY	conf/wp-config.php	/var/www/html/wordpress/wp-config.php

RUN		mkdir -p /var/www/html && \
		tar xvf /latest.tar.gz -C /var/www/html && \
		chown -R www-data:www-data /var/www/html && \
		service php7.3-fpm start && \
		rm /var/www/html/wordpress/wp-config-sample.php && \
		echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT [ "php-fpm7.3", "-F", "-R" ]
