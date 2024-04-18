FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx curl && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /var/test
EXPOSE 80
ENV testVar "Ciao Mondo"
ADD test/ciaomondo.txt /var/test
USER root
