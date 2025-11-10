FROM openjdk:8-jdk-alpine
EXPOSE 8080

# Copy your JAR file from target folder to the container
ADD target/docker-jenkins-integration-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java","-jar","/app.jar"]

