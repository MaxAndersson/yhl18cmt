FROM maven:3.6 as build
WORKDIR /build/
RUN git clone https://github.com/yhl17cmt/Demo1WebApp
WORKDIR /build/Demo1WebApp
RUN mvn package
FROM tomcat:9.0
COPY --from=build /build/Demo1WebApp/target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
