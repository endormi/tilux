#!/bin/bash

check_and_install_package() {
  package=$1

  if ! command -v "$package" &>/dev/null; then
    echo "Installing $package which is required to run this script."
    sudo apt update
    sudo apt install $package
    clear
  fi
}

check_and_install_package openssl
check_and_install_package fzf

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Openssl Encryption');"
fi

get_user_input() {
  local input_text="$1"
  local input_variable="$2"
  read -p "$input_text" "$input_variable"
  if [[ "$script_argument" == "tilux" ]]; then
    catch_empty "${!input_variable}"
  fi
}

script_argument=$1

sleep 1

get_user_input "What file do you want to encrypt? " f
get_user_input "What is the file extension you want to use? (e.g. .dat) " fe

# Choices pulled from openssl enc
choices="
-aes-128-cbc -aes-256-cbc -aria-128-cfb -aria-128-ofb -aria-192-cfb8 -aria-256-cbc -aria-256-ctr
-bf-ofb -camellia-192-ecb -cast5-ofb -des-ecb -des-ede-ofb -des-ede3-ofb -rc2-cfb -rc4-40
-seed-ecb -sm4-ctr -aes-128-ecb -aes-256-ecb -aria-128-cfb8 -aria-192-cbc -aria-192-ctr
-aria-256-cfb -aria-256-ecb -bf-cbc -camellia-128-cbc -camellia-256-cbc -cast5-cbc
-des-ede -des-ede3 -des-ofb -rc2-40-cbc -rc2-ecb -seed-ofb -sm4-ecb -aes-192-cbc
-aria-128-cbc -aria-128-ctr -aria-192-cfb -aria-192-ecb -aria-256-cfb1 -aria-256-ofb
-bf-cfb -camellia-128-ecb -camellia-256-ecb -cast5-cfb -des-cbc -des-ede-cbc -des-ede3-cbc
-rc2-64-cbc -rc2-ofb -seed-cbc -sm4-cbc -sm4-ofb -aes-192-ecb -aria-128-cfb -aria-128-ecb
-aria-192-cfb1 -aria-192-ofb -aria-256-cfb8 -bf-ecb -camellia-192-cbc -cast5-ecb -des-cfb
-des-ede-cfb -des-ede3-cfb -rc2-cbc -rc4 -seed-cfb -sm4-cfb
"

echo "Encryption choices:"
sleep 1
enc_method=$(echo $choices | tr ' ' '\n' | fzf)
echo -e "NOTE: Remember your choice! \n"

openssl enc $enc_method -pbkdf2 -in $f -out $f$fe
