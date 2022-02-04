.PHONY:	 all up fclean

all:
		@mkdir -p /Users/dcho/data/wp
		@mkdir -p /Users/dcho/data/dbdata
		@echo "127.0.0.1 dcho.42.fr" >> /etc/hosts
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@docker-compose -f srcs/docker-compose.yml up --build -d

fclean:
		@docker-compose -f srcs/docker-compose.yml down --rmi all --volumes
		@docker rmi debian:buster
		@rm -rf /Users/dcho/data

