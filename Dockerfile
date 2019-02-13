FROM ubuntu
MAINTAINER Kimbro Staken

RUN apt-get install -y software-properties-common python && \
    add-apt-repository ppa:chris-lea/node.js && \
    echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y nodejs && \
    mkdir /var/www

ADD app.js /var/www/app.js

USER 1001

CMD ["/usr/bin/node", "/var/www/app.js"] 
