#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('Git Config');"

read -p "Name: " name
read -p "Email: " email
read -p "Do you want to set it globally? (Y/n) " c
c="$(echo ${c} | tr 'A-Z' 'a-z')"

case "$c" in
  "y")
    echo "Setting git configs globally..."
    git config --global user.name $name
    git config --global user.email $email
    sleep 1
    echo "Done!"
  ;;
  *)
    echo "Setting git configs locally..."
    git config user.name $name
    git config user.email $email
    sleep 1
    echo "Done!"
  ;;
esac
