# Use lightweight OpenJDK base image
FROM openjdk:8-jdk-alpine

# Expose application port
EXPOSE 8080

# Copy the built JAR from the target folder into the container
ADD target/docker-jenkins-integration-1.0.0.jar app.jar

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]

