# Use a base image with Java (openjdk)
FROM openjdk:17-jdk-slim


# Copy the JAR file from your local machine to the container
COPY target/Eureka-0.0.1-SNAPSHOT.jar eureka-server.jar

# Specify the command to run the JAR file
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
