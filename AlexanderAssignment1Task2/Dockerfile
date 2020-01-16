FROM maven:3.6.3-jdk-11 as builder

WORKDIR /app

COPY Demo1WebApp/pom.xml .
RUN mvn -e -B dependency:resolve
COPY Demo1WebApp/src ./src
RUN mvn -e -B package

FROM tomcat:9.0.30-jdk11-openjdk
COPY --from=builder /app/target/Demo1WebApp.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
