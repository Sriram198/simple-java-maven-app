FROM openjdk:11.0.7
WORKDIR /app
COPY target/my-app-1.0-SNAPSHOT.jar .
RUN ls -lrt
RUN pwd
EXPOSE 8080
ENTRYPOINT [ "sh","-c","java -jar my-app-1.0-SNAPSHOT.jar" ]
