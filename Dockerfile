FROM tomcat:8.0-alpine
LABEL maintainer="Abhilash"
ADD target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD ["catalina.sh", "run"]

