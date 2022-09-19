FROM tomcat:7-jdk8-corretto
COPY target/MyWebApp*.war /usr/local/tomcat/webapps/MyWebApp.war
