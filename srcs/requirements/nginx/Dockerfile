FROM debian:buster

RUN apt update -y && apt install nginx openssl -y

COPY ./conf/script.sh /

CMD ["/script.sh"]
