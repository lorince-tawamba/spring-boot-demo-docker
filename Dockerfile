# For Java 8, try this
FROM openjdk:8-jdk-alpine

# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Add maintainer info
LABEL maintainer="TAWAMBA KOUAKAM Lorince <lorince.tawamba@ucac-icam.com>"

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


