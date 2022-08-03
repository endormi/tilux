#!/bin/bash

if [[ -z "$(which openssl)" ]]; then
  echo "Installing openssl which is required to run this script."
  sudo apt update
  sudo apt install openssl
  clear
fi

if [[ $1 == "tilux" ]]; then
  source ./tools/catch
  python3 -c "from tools.logos import Logo; Logo('Openssl Encryption');"
fi
sleep 1


read -p "What file do you want to encrypt? " f
if [[ $1 == "tilux" ]]; then catch_empty $f; fi
read -p "What is the file extension you want to use? (e.g. .dat) " fe
if [[ $1 == "tilux" ]]; then catch_empty $fe; fi

# TODO:
# Display choices better visually
echo "
Encryption choices:
-aes-128-cbc   -aes-256-cbc   -aria-128-cfb   -aria-128-ofb   -aria-192-cfb8
-aria-256-cbc   -aria-256-ctr   -bf-ofb   -camellia-192-ecb   -cast5-ofb
-des-ecb   -des-ede-ofb   -des-ede3-ofb   -rc2-cfb   -rc4-40
-seed-ecb   -sm4-ctr   -aes-128-ecb   -aes-256-ecb   -aria-128-cfb8
-aria-192-cbc   -aria-192-ctr   -aria-256-cfb   -aria-256-ecb   -bf-cbc
-camellia-128-cbc   -camellia-256-cbc   -cast5-cbc   -des-ede   -des-ede3
-des-ofb   -rc2-40-cbc   -rc2-ecb   -seed-ofb   -sm4-ecb
-aes-192-cbc   -aria-128-cbc   -aria-128-ctr   -aria-192-cfb   -aria-192-ecb
-aria-256-cfb1   -aria-256-ofb   -bf-cfb   -camellia-128-ecb   -camellia-256-ecb
-cast5-cfb   -des-cbc   -des-ede-cbc   -des-ede3-cbc   -rc2-64-cbc
-rc2-ofb   -seed-cbc   -sm4-cbc   -sm4-ofb   -aes-192-ecb
-aria-128-cfb   -aria-128-ecb   -aria-192-cfb1   -aria-192-ofb   -aria-256-cfb8
-bf-ecb   -camellia-192-cbc   -cast5-ecb   -des-cfb   -des-ede-cfb
-des-ede3-cfb   -rc2-cbc   -rc4   -seed-cfb  -sm4-cfb
"

read -p "What encryption method do you want to use? " enc_method
if [[ $1 == "tilux" ]]; then catch_empty $enc_method; fi
echo

openssl enc $enc_method -pbkdf2 -in $f -out $f$fe
