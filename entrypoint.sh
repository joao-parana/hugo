#!/bin/sh

set -e 

echo ". . . . HUGO Static Web Site Generator - versão 1.0.0 . . . ."
echo "Você invocou com os seguintes parâmetros: $@"
if [ "$1" = 'bash' ]; then
    echo 'Executando a bash.'
    echo ' '
    echo 'Você pode invocar HUGO como no exemplo abaixo, para que ele gere os fontes em /target:'
    echo ' '
    echo '/usr/bin/hugo \\'
    echo '  --theme=hyde \\'
    echo '  --buildDrafts \\'
    echo '  --baseUrl="http://dockerhost.local" \\'
    echo '  -d="/target"'
    echo ' '
    echo 'Lembre-se de colocar os fontes do site, (incluindo o tema usado) em /www '
    echo 'Você pode usar Volumes para /www e para /target '
    echo ' '
    echo 'Para rodar o Contêiner use :'
    echo ' '
    echo 'hugo server --bind="0.0.0.0"'
    echo ' '

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
