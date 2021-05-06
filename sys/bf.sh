#!/bin/bash

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('BF');"
fi

bu=`date +%d-%m-%y`
read -p "Type in the folder you want to backup: " src
if [[ $1 == "tilux" ]]; then catch_empty $src; fi
read -p "Type in the filename (you want to save it as): " f
if [[ $1 == "tilux" ]]; then catch_empty $dest; fi

tar -cpzf $f-$bu.tar.gz $src
