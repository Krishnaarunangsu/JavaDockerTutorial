FROM openjdk:17.0.1
COPY src/ /src/
RUN javac /src/com/java/docker/tut/Sample.java -d /app
WORKDIR /app

CMD ["java", "com.java.docker.tut.Sample"]