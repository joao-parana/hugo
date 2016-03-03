#!/bin/sh

set -e 

echo ". . . . HUGO Statice Web Site Generator . . . ."
echo "Você invocou com os seguintes parâmetros: $@"
if [ "$1" = 'bash' ]; then
    echo "Executando a bash"
    /bin/bash $2 $3 $4 $5 $6 $7 $8 $9
    exit 0
fi

/usr/bin/hugo \
  --theme=hyde \
  --buildDrafts \
  --baseUrl="http://dockerhost.local" \
  -d="/target"
while [ true ]
do
  /usr/bin/hugo \
    --theme=hyde \
    --buildDrafts \
    --baseUrl="http://dockerhost.local" \
    -d="/target" > /dev/null
  sleep 1
done

# /usr/bin/hugo server \
#   --theme=hyde \
#   --buildDrafts \
#   --baseUrl="http://dockerhost.local" \
#   --bind="dockerhost.local" \
#   --port=80 \
#   --appendPort=false \
#   -d="/target" \
#   -w
