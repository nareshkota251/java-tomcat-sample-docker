FROM tomcat:8.0-alpine
RUN sudo usermod -aG docker ${USER}
ADD **/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]