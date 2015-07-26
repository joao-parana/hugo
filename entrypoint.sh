#!/bin/sh
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
