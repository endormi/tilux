#!/bin/bash

sudo chmod +x run.sh
sudo chmod +x cpu_consuming_process.sh
sudo chmod +x mem_consuming_process.sh

clear

read -p "Do you want to run the script? (Y/n) " input
if [[ $input == "Y" || $input == "y" ]]; then
  clear
  ./run.sh
else
  echo Exiting...
  sleep 1
  clear
  exit
fi
