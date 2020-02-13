FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD 123456
COPY Northwind_Database.sql /docker-entrypoint-inidb.d

VOLUME /docker-entrypoint-initdb.d
