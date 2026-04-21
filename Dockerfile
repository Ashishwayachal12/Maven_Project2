FROM maven
WORKDIR /build
RUN mvn package
RUN mv target/*.jar app.jar
CMD ["java","-jar","app.jar"]
