

# Create a Stage for resolving and downloading dependencies
# FROM eclipse-temurin:17-jdk-jammy as deps
FROM openjdk:17-oracle

#ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-slim
#ENV PATH=$PATH:$JAVA_HOME/bin

# WORKDIR /app
COPY src /src
RUN javac /src/com/java/docker/tut/Hello.java
# CMD ["java", "/src/com/java/docker/tut/Hello"]
CMD ["java","/src/com/java/docker/tut/Hello.java"]