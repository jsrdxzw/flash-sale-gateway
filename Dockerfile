FROM openjdk:17.0.1-slim
VOLUME /tmp
COPY ./target/flash-sale-gateway-0.0.1-SNAPSHOT.jar app.jar
ENV  JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app.jar"]
