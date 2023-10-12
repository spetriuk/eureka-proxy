FROM amazoncorretto:17.0.8-alpine3.18

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]