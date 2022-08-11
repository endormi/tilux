#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Open');"

echo "You need to use https:// ..."
read -p "URL: " url
[ "$1" == "tilux" ] && catch_empty $url

if [[ ! $url =~ "https://" ]]; then
  echo "You need to add https:// to $url"
  exit
fi
xdg-open $url
