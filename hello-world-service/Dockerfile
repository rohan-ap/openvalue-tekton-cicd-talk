FROM azul/zulu-openjdk-alpine:11.0.9-11.43.21
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
