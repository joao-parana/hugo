FROM golang:latest 

MAINTAINER João Antonio Ferreira "joao.parana@gmail.com"

ENV REFRESHED_AT 2015-07-25

ADD build.sh /build.sh
RUN chmod a+rx /build.sh  &&  mkdir /home/go && ls -la /go/bin && ls -la /home

WORKDIR /home/go 

VOLUME ["/home/go"]

ENV CGO_ENABLED   0 
ENV GOOS          linux 

CMD ["/build.sh"]

# Run this command in a Shell
# docker build -t parana/hugo -F Dockerfile.builder . 
# docker run  -v ~/Desktop/Development/hugo/bin:/go/bin parana/hugo
