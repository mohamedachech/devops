# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY /devops/target/*.jar  /opt/devops.jar

# Expose the port your Spring Boot application will run on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "devops.jar"]
