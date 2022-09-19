FROM tomcat:8.0.20-jre8
COPY target/MyWebApp*.war /usr/local/tomcat/webapps/MyWebApp.war
