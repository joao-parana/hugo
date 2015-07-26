FROM ubuntu:14.04 

MAINTAINER João Antonio Ferreira "joao.parana@gmail.com"

ENV REFRESHED_AT 2015-07-25

RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb
RUN dpkg -i hugo_0.14_amd64.deb

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+rx /entrypoint.sh     
VOLUME ["/www", "/target"]
WORKDIR /www
EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]

# CMD ['/usr/bin/hugo', 'server', '--theme=hyde', '--buildDrafts', '--baseUrl=http://dockerhost.local', '--port=80', '--appendPort=false', '-d="/target"', '-w']

