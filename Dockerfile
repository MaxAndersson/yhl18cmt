FROM maven:3.3-jdk-8 as builder
WORKDIR /code
COPY pom.xml /code
COPY src/ /code
RUN mvn clean install


FROM tomcat:9.0-alpine
COPY --from=builder /code/target/Demo1WebApp.war /usr/local/tomcat/webapps/
COPY --from=builder /code/main/webapp/index.jsp /usr/local/tomcat/webapps/ROOT/
#COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
#COPY tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD ["catalina.sh", "run"]
