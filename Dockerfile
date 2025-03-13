# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Expose port 8082
EXPOSE 8082

# Copy the WAR file to the container
ADD target/petclinic.war /petclinic.war

# Set the entry point to run the application
ENTRYPOINT ["java", "-jar", "/petclinic.war"]

