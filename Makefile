.PHONY:	 all up fclean

all:
		@sudo mkdir -p /home/dcho/data/wp
		@sudo mkdir -p /home/dcho/data/dbdata
		@sudo echo "127.0.0.1 dcho.42.fr" >> /etc/hosts
		@docker-compose -f srcs/docker-compose.yml up --build -d

up:
		@docker-compose -f srcs/docker-compose.yml up --build -d

fclean:
		@docker-compose -f srcs/docker-compose.yml down --rmi all --volumes
		@docker rmi debian:buster
		@sudo rm -rf /home/dcho/data

