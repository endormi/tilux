#!/bin/bash

#
# Still a WIP code
#

python -c "from logos import Logo; Logo('CCRYPT Encryption');"

if [[ "$(which ccrypt)" == "" ]]; then
  sudo apt-get upgrade
  sudo apt-get install ccrypt
else
  echo "You have $(ccrypt -V)"
fi


read -p "What file do you want to encrypt? " f
ccencrypt $f
