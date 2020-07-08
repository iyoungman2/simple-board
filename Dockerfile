FROM openjdk:11

VOLUME /tmp

EXPOSE 8000

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} simple-board.jar

ENTRYPOINT ["java","-Dspring.profiles.active=real", "-jar","/simple-board.jar"]
