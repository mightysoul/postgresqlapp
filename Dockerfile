FROM openjdk:8
ADD postgresql-0.0.1-SNAPSHOT.jar postgresql-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","postgresql-0.0.1-SNAPSHOT.jar"]

