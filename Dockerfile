FROM openjdk:8
ADD target/postgresql-0.0.1-SNAPSHOT.jar postgresql-0.0.1-SNAPSHOT.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","postgresql-0.0.1-SNAPSHOT.jar"]
