#!/bin/bash

source ./tools/catch
python3 -c "from tools.logos import Logo; Logo('CCRYPT Encryption');"

if [[ "$(which ccrypt)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt-get install ccrypt
fi


read -p "What file do you want to encrypt? " f
catch_empty $f
ccencrypt $f
