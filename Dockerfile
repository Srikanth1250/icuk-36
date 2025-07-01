# Base image with Tomcat 8 and JRE 8
FROM tomcat:8-jre8

# Maintainer info
LABEL maintainer="valaxytech@gmail.com"

# Remove default Tomcat apps (optional, keeps it clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat's webapps directory
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
