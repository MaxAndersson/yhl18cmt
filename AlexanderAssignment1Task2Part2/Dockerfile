FROM mysql:5.7.29 as baseline

FROM baseline as builder

RUN ["sed" , "-i", "s/exec \"$@\"/echo \"not running $@\"/", "/usr/local/bin/docker-entrypoint.sh"]

ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_USER Ergho
ENV MYSQL_PASSWORD 123
ENV MYSQL_DATABASE northwind
COPY business-data/Northwind_Database.sql /docker-entrypoint-initdb.d

RUN ["/usr/local/bin/docker-entrypoint.sh", "mysqld", "--datadir", "/initdb"]

FROM baseline

COPY --from=builder /initdb /var/lib/mysql
