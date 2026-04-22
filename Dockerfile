FROM maven
WORKDIR /build
<<<<<<< HEAD
=======
COPY . .
>>>>>>> 108384b (update)
RUN mvn package
RUN mv target/*.jar app.jar
CMD ["java","-jar","app.jar"]
