#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Openssl Decryption');"

sleep 1

read -p "What file do you want to decrypt? " f
[ "$1" == "tilux" ] && catch_empty $f
read -p "What is the filename you wish to have after decryption? " fl
[ "$1" == "tilux" ] && catch_empty $fl

# TODO:
# Display choices better visually
echo "
Decryption choices:
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

read -p "What did you use for the encryption? " decr_method
[ "$1" == "tilux" ] && catch_empty $decr_method
echo

openssl enc $decr_method -d -pbkdf2 -in $f -out $fl
