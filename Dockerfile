FROM openjdk:11.0-jre-slim

ENV JAVA_OPTS "-Djava.security.egd=file:/dev/./urandom"
ENV JAVA_TOOL_OPTIONS "-XX:InitialRAMPercentage=20.0 -XX:MaxRAMPercentage=65.0 -XX:MinRAMPercentage=10.0 -Xms128M ${JAVA_OPTS}"

ENTRYPOINT ["java", "-jar"]

WORKDIR /opt/app

COPY build/libs/memento-api-gateway.jar .

EXPOSE 4452

CMD ["memento-api-gateway.jar"]