# syntax=docker/dockerfile:1
FROM maven:3.9-eclipse-temurin-11 AS build
WORKDIR /workspace
COPY pom.xml .
COPY src ./src
RUN mvn -q -DskipTests package

FROM eclipse-temurin:11-jre
WORKDIR /opt
COPY --from=build /workspace/target/*.jar /opt/app.jar
EXPOSE 9091
ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar /opt/app.jar"]
