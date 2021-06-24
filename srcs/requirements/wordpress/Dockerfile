# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcho <dcho@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/12 22:47:39 by dcho              #+#    #+#              #
#    Updated: 2021/06/24 22:09:26 by dcho             ###   ########.fr        #
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
		dumb-init

COPY	conf/php.ini		/etc/php/7.3/fpm
COPY	conf/latest.tar.gz	/
RUN		mkdir -p /var/www/html
RUN		tar xvf /latest.tar.gz -C /var/www/html/ && rm /latest.tar.gz && \
		service php7.3-fpm start
RUN		echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
# RUN		service php7.3-fpm start
# CMD		echo "\ndaemon off;" >> /etc/php/7.3/fpm/php-fpm.conf
RUN		chown -R www-data:www-data /var/www/html
ENTRYPOINT [ "php-fpm7.3", "-F", "-R" ]
# ENTRYPOINT [ "/usr/bin/dumb-init"]

# CMD			[ "/bin/bash"]


EXPOSE	9000
