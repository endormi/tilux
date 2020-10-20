#!/bin/bash

#
# Still a WIP
#

read -p "Your email: " email_address
email_address="$(echo ${email_address} | tr 'A-Z' 'a-z')"
read -p "Do you want to generate a key for yourself? (Y/n) " generate_key
generate_key="$(echo ${generate_key} | tr 'A-Z' 'a-z')"
if [[ $generate_key == "y" ]]; then
  gpg --full-generate-key
  gpg --output ~/revocation.crt --gen-revoke $email_address
  chmod 600 ~/revocation.crt
fi

echo -e "\nEven if you don't know the key say Y."
read -p "Are you going to import some else's key? (Y/n) " import_or_not
import_or_not="$(echo ${import_or_not} | tr 'A-Z' 'a-z')"

if [[ $import_or_not == "y" ]]; then
  read -p "Do you know the key? (Y/n) " known_key
  known_key="$(echo ${known_key} | tr 'A-Z' 'a-z')"

  if [[ $known_key == "y" ]]; then
    read -p "Key: " pub_key
    gpg --import $pub_key
  else
    # I'm working on this to figure out what happens if a key is found
    read -p "Add the email of the person: " email_key
    gpg --keyserver pgp.mit.edu --search-keys $email_key
  fi
fi

read -p "Do you wish to verify a key? (Y/n) " verify_key
if [[ $verify_key == "y" ]]; then
  read -p "Add the email of the person you wish to verify a key from: " email_addr
  gpg --fingerprint $email_addr
  gpg --sign-key $email_addr
fi

read -p "What is your key? " u_key
gpg --output ~/$u_key --armor --export $email_address
less $u_key
gpg --send-keys --keyserver pgp.mit.edu $u_key
