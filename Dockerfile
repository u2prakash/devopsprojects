FROM tomcat:8

COPY target/*.war /sr/local/tomcat/webapps/
