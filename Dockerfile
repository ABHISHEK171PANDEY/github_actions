FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copy the JAR file into the container
COPY target/spring-boot-app.jar app.jar

# Expose the default port used by the Spring Boot application
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
