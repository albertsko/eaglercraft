FROM eclipse-temurin:17-jre

ENV SERVER_HOME=/server

WORKDIR /opt/eagler/base

COPY bin/paper-1.12.2.jar /opt/eagler/base/paper.jar
COPY bin/plugins/*.jar /opt/eagler/base/plugins/
COPY bin/server.properties /opt/eagler/base/server.properties
COPY bin/server-icon.png /opt/eagler/base/server-icon.png
RUN echo "eula=true" > /opt/eagler/base/eula.txt

COPY entrypoint.sh /opt/eagler/entrypoint.sh
RUN chmod +x /opt/eagler/entrypoint.sh

VOLUME ["/server"]
EXPOSE 25565 8081

WORKDIR /server
ENTRYPOINT ["/opt/eagler/entrypoint.sh"]
