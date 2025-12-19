FROM tomcat:9.0.100
COPY /target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/TrainBook-1.0.0-SNAPSHOT.war
