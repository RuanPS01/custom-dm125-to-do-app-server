FROM mcr.microsoft.com/openjdk/jdk:17-distroless

WORKDIR /app

COPY bin/*.jar app.jar

ENV PORT=8080
EXPOSE ${PORT}

ENV JAVA_OPTS="-Xmx512m -Xms256m"
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
