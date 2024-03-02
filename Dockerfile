FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp

EXPOSE 8080

COPY build/libs/async-profiler-actuator-demo-*-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
