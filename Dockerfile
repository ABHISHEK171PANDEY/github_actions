# Use the Eclipse Temurin JDK 17 as the base image
FROM eclipse-temurin:17-jdk-jammy

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the workflow into the container
COPY target/spring-boot-app.jar app.jar

# Expose the default port used by the Spring Boot application
EXPOSE 8080

# Define the entry point to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
