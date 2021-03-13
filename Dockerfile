# This build is for Raspberry PI
FROM arm32v7/debian

WORKDIR /opt
COPY OpenJDK11U-jdk_arm_linux_hotspot_11.0.10_9.tar.gz .
RUN tar xzf OpenJDK11U-jdk_arm_linux_hotspot_11.0.10_9.tar.gz
RUN rm *.tar.gz

WORKDIR /opt/app
COPY build/libs/hello-0.0.1-SNAPSHOT.jar hello.jar

CMD ["/opt/jdk-11.0.10+9/bin/java", "-jar", "hello.jar"]