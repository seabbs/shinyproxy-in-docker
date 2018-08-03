FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-1.1.1.jar -O /opt/shinyproxy/shinyproxy.jar

WORKDIR /opt/shinyproxy/
CMD ["cp", "app_yml/.", ".", "java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
