FROM tomcat:7-jdk8-corretto
COPY MyWebApp/target/MyWebApp*.war /usr/local/tomcat/webapps/MyWebApp.war
