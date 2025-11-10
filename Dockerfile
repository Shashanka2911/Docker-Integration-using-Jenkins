FROM openjdk:8-jdk-alpine
EXPOSE 8080

# Copy your built JAR file into the container
ADD target/docker-jenkins-integration-0.0.1-SNAPSHOT.jar /app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]
