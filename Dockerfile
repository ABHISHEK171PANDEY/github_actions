# Use the OpenJDK 17 slim image as the base image
# This is a lightweight version of the Java Development Kit for Java 17
FROM openjdk:17-jdk-slim

# Create a temporary directory inside the container
# This is often used by Spring Boot for storing temporary files during runtime
VOLUME /tmp

# Define a build argument to specify the location of the JAR file
# By default, it points to the target directory where Maven places the built JAR
#ARG JAR_FILE=target/*.jar

# Copy the JAR file from the host machine into the container
# The JAR file is renamed to 'app.jar' inside the container
COPY target/spring-boot-app.jar app.jar 

# Specify the command to run when the container starts
# This runs the Spring Boot application using the 'java -jar' command
ENTRYPOINT ["java","-jar","/app.jar"]
