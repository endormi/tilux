#!/bin/bash

[ $1 == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('BF');"

bu=`date +%d-%m-%y`
read -p "Type in the folder you want to backup: " src
[ $1 == "tilux" ] && catch_empty $src
read -p "Type in the filename (you want to save it as): " f
[ $1 == "tilux" ] && catch_empty $f

tar -cpzf $f-$bu.tar.gz $src
