FROM debian:buster

RUN apt update -y && apt install php-mysql php-fpm curl -y

COPY ./conf/script.sh /
COPY ./conf/wp-config.php /

CMD ["/script.sh"]
