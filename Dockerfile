# Use stable Temurin JDK base image
FROM eclipse-temurin:8-jdk-alpine

# Expose port 8080 for the Spring Boot app
EXPOSE 8080

# Copy the JAR from target folder into container
ADD target/docker-jenkins-integration-1.0.0.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]


