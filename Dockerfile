# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "michaelboua@yahoo.fr" 
COPY ./target/welcome.war /usr/local/tomcat/webapps
