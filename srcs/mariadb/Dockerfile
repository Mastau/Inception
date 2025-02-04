FROM debian:bullseye

RUN apt update && apt upgrade && apt install -y mariadb-server mariadb-client zsh

EXPOSE 3306

COPY server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY init.sql /etc/mysql/
RUN mkdir /run/mysqld
COPY docker-entrypoint.sh .
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["mysqld"]
