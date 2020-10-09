#!/bin/bash

echo Running vb_version
echo ==================
echo
sleep 1

if [[ "$(which virtualbox-qt)" != "" ]]; then
  sudo apt-get update
  sudo apt install virtualbox-qt
else
  echo You have virtualbox-qt installed.
  echo "Version:" `apt-cache policy virtualbox-qt | grep 'Installed: ' | cut -c 14-`
fi

echo
virtualbox --help | head -n 1 | awk '{print $NF}'
