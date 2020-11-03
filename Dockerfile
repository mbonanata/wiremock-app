FROM amazoncorretto:8-alpine-jre

COPY wiremock.jar /app/wiremock.jar

EXPOSE 9090

VOLUME [ "/app/mappings" ]
VOLUME [ "/app/__files" ]


WORKDIR /app

ENTRYPOINT [ "java", "-jar", "wiremock.jar", "--port", "9090" ]
