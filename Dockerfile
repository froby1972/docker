FROM ubuntu:18.04
RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx curl && rm -rf /var/lib/apt/lists/*
EXPOSE 80
ENV testVar "Ciao Mondo"
ADD index.html /var/www/html
USER root
ENTRYPOINT ["usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]