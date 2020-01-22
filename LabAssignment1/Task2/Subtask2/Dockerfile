FROM ubuntu:18.04 as build
RUN apt update && apt install -y git
WORKDIR /build/
RUN git clone https://github.com/yhl17cmt/business-data
WORKDIR /build/business-data
FROM mariadb:10.3
ENV MYSQL_ROOT_PASSWORD=1202
COPY --from=build /build/business-data/Northwind_Database.sql /docker-entrypoint-initdb.d
EXPOSE 3306
