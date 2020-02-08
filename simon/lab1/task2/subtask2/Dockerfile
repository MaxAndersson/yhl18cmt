FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD test
COPY Northwind_Database.sql /docker-entrypoint-initdb.d

VOLUME /docker-entrypoint-initdb.d
