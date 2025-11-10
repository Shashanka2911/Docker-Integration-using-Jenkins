# Use a supported Java 11 image (Temurin = official replacement for OpenJDK)
FROM eclipse-temurin:11-jdk

# Expose port 8080 for the Spring Boot app
EXPOSE 8080

# Copy your JAR file into the image
ADD target/docker-jenkins-integration.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]


