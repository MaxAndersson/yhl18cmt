FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_USER Ergho
ENV MYSQL_PASSWORD 123
ENV MYSQL_DATABASE northwind

COPY business-data/Northwind_Database.sql /docker-entrypoint-initdb.d


VOLUME /docker-entrypoint-initdb.d