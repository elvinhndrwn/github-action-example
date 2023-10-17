FROM openjdk:17-jdk-slim
EXPOSE 8080
#WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/*-SNAPSHOT.jar springboot-github-action.jar
# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "springboot-github-action.jar"]