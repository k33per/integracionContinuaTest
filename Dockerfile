FROM tomcat:9.0.48-jdk11-openjdk
MAINTAINER "Ivan Barrios"
COPY /target/WebApp.war /tomcat/webapps/