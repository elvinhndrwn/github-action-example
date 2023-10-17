FROM openjdk:17-jdk-slim
EXPOSE 8080
#WORKDIR /app

# Add the Spring Boot JAR file into the container
ADD target/springboot-github-action.jar springboot-github-action.jar
# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/springboot-github-action.jar"]