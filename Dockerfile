FROM tomcat:11-jdk21

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/hello-world-1.0.0.war /usr/local/tomcat/webapps/hello-world.war

EXPOSE 8080