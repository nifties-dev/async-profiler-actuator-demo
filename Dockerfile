FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp

EXPOSE 8080

ENV JAVA_TOOL_OPTIONS="-Djava.rmi.server.hostname=0.0.0.0 \
-Dcom.sun.management.jmxremote=true \
-Dcom.sun.management.jmxremote.local.only=false \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.ssl=false \
-Dcom.sun.management.jmxremote.port=9000 \
-Dcom.sun.management.jmxremote.rmi.port=9000"

COPY build/libs/async-profiler-actuator-demo-*-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
