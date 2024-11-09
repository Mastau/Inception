#!/bin/sh

service mysql start;
mysql_secure_installation << _EOF_

y
${DB_ROOTPASS}
${DB_ROOTPASS}
y
y
y
y
_EOF_

mariadb -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}' IDENTIFIED BY '${DB_PASSWD}';
"


#SED les datas depuis le .env
#mysql < db.sql
#sed -i -r 's/$DB_NAME/$DB_NAME/1/' db.sql
#mariadb < db.sql

exec mysqld
