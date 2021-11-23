#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Open');"
fi

echo "You need to use https:// ..."
read -p "URL: " url
if [[ $1 == "tilux" ]]; then catch_empty $url; fi

if [[ ! $url =~ "https://" ]]; then
  echo "You need to add https:// to $url"
  exit
fi
xdg-open $url
