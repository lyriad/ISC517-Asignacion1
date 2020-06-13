FROM openjdk:11-jdk-slim

LABEL maintainer="Edilio Garcia <ediliofco19@hotmail.com>"

VOLUME /tmp

EXPOSE 8080

COPY /build/libs/isc517-asignacion1-0.0.1-SNAPSHOT.jar asignacion1.jar

ENTRYPOINT ["java", "-jar", "asignacion1.jar"]