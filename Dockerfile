#FROM tomcat:9.0.100
#COPY /target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/TrainBook-1.0.0-SNAPSHOT.war

FROM openjdk:8-jdk-alpine
RUN apt-get update -y
RUN mkdir -p /home/EMS && \
    mkdir -p /home/EMS/config
COPY TrainBook-1.0.0-SNAPSHOT.war  /home/EMS
WORKDIR /home/EMS
CMD ["java", "-jar", "TrainBook-1.0.0-SNAPSHOT.war"]
