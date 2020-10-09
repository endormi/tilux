#!/bin/bash

echo Running exists
echo ==============
echo
sleep 1

choices="file or directory"
echo "choices: $choices"
read -p "Choice: " choice
choice="$(echo ${choice} | tr 'A-Z' 'a-z')"

if [[ $choice == "file" || $choice == "f" ]]; then
  read -p "Path to file: " f
  if [[ -f "$f" ]]; then
    echo "$f exists"
  else
    echo "$f doesn't exist..."
  fi

elif [[ $choice == "dir" || $choice == "directory" || $choice == "d" ]]; then
  read -p "Path to directory: " d
  if [[ -d "$d" ]]; then
    echo "$d exists"
  else
    echo "$d doesn't exist..."
  fi
else
  echo "Invalid choice ($choice)"
  echo Use $choices
fi
