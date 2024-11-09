# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thomarna <thomarna@42angouleme.fr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/09 18:33:55 by thomarna          #+#    #+#              #
#    Updated: 2024/11/09 22:29:46 by thomarna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: up

up:
	@mkdir -p /home/tarnaud/data/mariadb
	@mkdir -p /home/tarnaud/data/wordpress
	@docker compose -f ./srcs/docker-compose.yml up -d
down:
	@docker compose -f ./srcs/docker-compose.yml down -v
start:
	@docker compose -f ./srcs/docker-compose.yml start
stop:
	@docker compose -f ./srcs/docker-compose.yml stop
status:
	@docker ps
fclean :
		@docker system prune -af
		@rm -rf /home/tarnaud/data/

re: fclean all
