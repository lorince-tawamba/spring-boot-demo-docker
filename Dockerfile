# For Java 8, try this
FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Add maintainer info
LABEL maintainer="TAWAMBA KOUAKAM Lorince <lorince.tawamba@ucac-icam>"

# Refer to Maven build -> finalName
ARG JAR_FILE=target/*.jar

# Changed the working directory to /opt/app
WORKDIR /opt/app

# Add a volume pointing /tmp
VOLUME /tmp

# Expose some tcp/udp ports
EXPOSE 8080

# Copy target/*.jar to /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]

## sudo docker run -p 8080:8080 -t spring-boot-docker:1.0
## sudo docker run -p 80:8080 -t spring-boot-docker:1.0
## sudo docker run -p 443:8443 -t spring-boot-docker:1.0

