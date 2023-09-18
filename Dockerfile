# Use a Java base image
FROM openjdk:17-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the Spring Boot application JAR file into the Docker image
COPY target/target/pvh_pholsophak_spring-0.0.1-SNAPSHOT.jar /app/target/pvh_pholsophak_spring-0.0.1-SNAPSHOT.jar

# Run the Spring Boot application when the container starts
CMD ["java", "-jar", "target/pvh_pholsophak_spring-0.0.1-SNAPSHOT.jar"]