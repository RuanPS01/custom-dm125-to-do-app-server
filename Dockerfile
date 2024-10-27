FROM eclipse-temurin:17-alpine
ARG JAR_FILE=bin/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
