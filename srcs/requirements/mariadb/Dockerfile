# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dcho <dcho@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/12 22:47:39 by dcho              #+#    #+#              #
#    Updated: 2021/06/15 19:49:57 by dcho             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM	debian:buster
LABEL	MAINTAINER="dcho"

RUN		sed -i 's/deb.debian.org/ftp.kr.debian.org/g' etc/apt/sources.list && \
		apt-get update && apt-get upgrade -y && \
		apt-get install -y \
		mariadb-server \
		vim \
		dumb-init

COPY	conf/php.ini		/etc/php/7.3/fpm
COPY	conf/latest.tar.gz	/
RUN		tar xvf /latest.tar.gz && rm /latest.tar.gz && \
		service php7.3-fpm start
ENTRYPOINT [ "php-fpm7.3", "-F", "-R" ]


EXPOSE	9000
