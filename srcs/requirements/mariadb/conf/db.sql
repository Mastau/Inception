CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWD';
GRANT ALL PRIVILEGE on $DB_NAME.* TO '$DB_USER'@'%';
ALTER USER 'root'@'%' IDENTIFIED BY '$DB_ROOTPASS';
FLUSH PRIVILEGES;
