FROM ubuntu
ARG DEBIAN_FRONTED=noninteractive
RUN apt-get update
RUN apt-get install -y apache2 && apa-get clean
ENTRYPOINT apachectl -D FOREGROUND
ADD ./index.html /var/www/html/
