FROM debian:buster

RUN apt update -y && apt install mariadb-server -y

COPY ./conf/script.sh /
#COPY ./conf/db.sql /
COPY ./conf/server.cnf /etc/mysql/mariadb.conf.d
RUN chmod +x script.sh 
CMD ["/script.sh"]
