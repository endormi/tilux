#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('CCRYPT Encryption');"

if [[ "$(which ccrypt)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt-get install ccrypt
else
  echo "You have $(ccrypt -V)"
fi


read -p "What file do you want to encrypt? " f

if [[ $f == "" ]]; then
  echo "Choice can't be empty!"
  exit;
fi

ccencrypt $f
