FROM openjdk:11-jre-slim

WORKDIR /app
COPY ./target/SpringbootGithubActions-0.0.1-SNAPSHOT.jar /app
COPY app.json /app
COPY heroku.yml /app

EXPOSE 8080

CMD java -jar SpringbootGithubActions-0.0.1-SNAPSHOT.jar --server.port=$PORT
