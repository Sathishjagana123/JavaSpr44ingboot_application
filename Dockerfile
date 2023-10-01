# Use the appropriate base image for Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory inside the container
WORKDIR /opt/app

# Copy the JAR file from the target directory into the container
COPY target/spring-boot-web.jar app.jar

# Specify the command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]

