#!/bin/sh
# cd /bin
# ls -lA .
echo 'Iniciando instalação do Hugo'
date
export GOPATH=/home/go
go get -v github.com/spf13/hugo
echo 'Removendo executável anterior'
# rm -rf hugo-debian-64 2> /dev/null
echo 'Iniciando compilação e linkedição do executável'
# go build -a -installsuffix cgo -o hugo-debian-64 .
date
echo 'Verificando executável gerado'
ls -lA $GOPATH # hugo-debian-64
echo 'Agora podemos usar este executável num ambiente Linux básico'
echo 'tal como o BusyBox (busybox:ubuntu-14.04) que ocupa menos de'
echo '6 Megabytes.'
echo 'Seu site deve ficar no diretório www ao lado do executável'
echo 'hugo-debian-64'
/bin/bash