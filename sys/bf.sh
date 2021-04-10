#!/bin/bash

source ./tools/catch
python3 -c "from tools.logos import Logo; Logo('BF');"

bu=`date +%d-%m-%y`
read -p "Type in the folder you want to backup: " src
catch_empty $src
read -p "Type in the destination: " dest
catch_empty $dest

tar -cpzf $dest-$bu.tar.gz $src
