FROM maven:3.6.0-jdk-11 AS builder
WORKDIR /app
COPY Demo1WebApp/pom.xml .
RUN mvn install
COPY Demo1WebApp/src ./src
RUN mvn package

FROM tomcat:9.0.30-alpine
COPY --from=builder /app/target/*.war $CATALINA_HOME/webapps/ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]
