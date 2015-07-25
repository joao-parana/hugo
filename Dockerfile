FROM ubuntu:14.04 

MAINTAINER João Antonio Ferreira "joao.parana@gmail.com"

ENV REFRESHED_AT 2015-07-25

RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb
RUN dpkg -i hugo_0.14_amd64.deb
RUN apt-get install -y apache2

EXPOSE 1313
EXPOSE 80

CMD ["apache2" "-D" "FOREGROUND"]