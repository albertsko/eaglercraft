FROM eclipse-temurin:17-jre

ENV SERVER_HOME=/server

WORKDIR /opt/eagler/base

COPY base/* /opt/eagler/base/

COPY entrypoint.sh /opt/eagler/entrypoint.sh
RUN chmod +x /opt/eagler/entrypoint.sh

VOLUME ["/server"]
EXPOSE 25565 8081

WORKDIR /server
ENTRYPOINT ["/opt/eagler/entrypoint.sh"]
