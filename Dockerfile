# Use a base image with Java (openjdk)
FROM openjdk:17-jdk-slim

<<<<<<< HEAD

# Copy the JAR file from your local machine to the container
COPY target/Eureka-0.0.1-SNAPSHOT.jar eureka-server.jar
=======
# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your local machine to the container
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar
>>>>>>> 215435e8a88d86c18be622a86e714ddf056e0958

# Specify the command to run the JAR file
ENTRYPOINT ["java", "-jar", "eureka-server.jar"]
