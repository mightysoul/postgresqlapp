FROM openjdk:8
ADD TEST.jar TEST.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","TEST.jar"]

