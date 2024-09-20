#FROM amazoncorretto:21-alpine-jdk
#ARG JAR_FILE=target/*.jar
#ARG PROFILES
#ARG ENV
#COPY build/libs/*.jar app.jar
#ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "app.jar"]

FROM amazoncorretto:21-alpine-jdk
ARG JAR_FILE=build/libs/*.jar
ARG PROFILES
ARG ENV

COPY ${JAR_FILE} app.jar
EXPOSE 8080

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}", "-jar", "app.jar"]
