#FROM tomcat:9.0.100
#COPY /target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/TrainBook-1.0.0-SNAPSHOT.war

FROM eclipse-temurin:17-jdk-alpine
RUN mkdir -p /home/EMS/config
WORKDIR /home/EMS
COPY target/TrainBook-1.0.0-SNAPSHOT.war app.war
EXPOSE 8080
CMD ["java", "-jar", "app.war"]
