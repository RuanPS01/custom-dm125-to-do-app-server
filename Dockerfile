FROM mcr.microsoft.com/openjdk/jdk:17-distroless
ARG JAR_FILE=bin/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
