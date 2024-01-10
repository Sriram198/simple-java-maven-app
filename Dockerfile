FROM openjdk:8-jre-alpine
RUN mkdir /test
COPY target/my-app-1.0-SNAPSHOT.jar ./test/
RUN ls -lrt /test
RUN chmod +r /test/my-app-1.0-SNAPSHOT.jar
EXPOSE 8080
COPY start.sh /test/start.sh
RUN chmod 777 /test/start.sh
RUN chmod +x /test/start.sh
RUN ls -lrt /test
ENTRYPOINT [ "/test/start.sh" ]
