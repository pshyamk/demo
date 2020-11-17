# the first stage of our build will use openjdk11
FROM adoptopenjdk/openjdk11

# copy only the artifacts we need from the first stage and discard the rest
COPY target/demo-0.0.1-SNAPSHOT.jar /demo.jar

# set the startup command to execute the jar
ENTRYPOINT ["java", "-jar", "/demo.jar"]