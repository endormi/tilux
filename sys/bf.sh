#!/bin/bash

python3 -c "from logos import Logo; Logo('BF');"

bu=`date +%d-%m-%y`
read -p "Type in the folder you want to backup: " src
read -p "Type in the destination: " dest

tar -cpzf $dest-$bu.tar.gz $src
