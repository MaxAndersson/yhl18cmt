FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD 12345
ENV MYSQL_DATABASE Northwind_Database
ENV MYSQL_USER valle
ENV MYSQL_PASSWORD 12345
COPY business-data/Northwind_Database.sql /docker-entrypoint-initdb.d/dump.sql
EXPOSE 3306