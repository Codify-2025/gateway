FROM eclipse-temurin:17-jre
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} /app/app.jar
ENV PORT=8080
ENTRYPOINT ["java","-jar","/app/app.jar"]