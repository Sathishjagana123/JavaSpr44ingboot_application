FROM adoptopenjdk/openjdk11:alpine-jre
ARG artifact=cd JavaSpringboot_application/target/springboot-web.jar
WORKDIR /opt/app
COPY ${artifact} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
