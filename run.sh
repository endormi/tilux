#!/bin/bash

# ANSI-colors
r="\033[0;31m" # Red
b="\033[0;34m" # Blue
g="\033[0;32m" # Green
y="\033[1;33m" # Yellow
w="\033[1;37m" # White

version="v.0.0.1"
cmd="1 or 2"
clear
echo -e "${g}
ooooooooooooo ooooo ooooo        ooooo     ooo ooooooo  ooooo
8    888    8  888   888          888       8    8888    d8
     888       888   888          888       8     Y888..8P
     888       888   888          888       8       8888
     888       888   888          888       8     .8PY888.
     888       888   888       o   88.    .8     d8    888b
    o888o     o888o o888ooooood8     YbodP     o888o  o88888o

${y}$version ${w}by Endormi"
echo
echo What script do you want to run?
echo 1 cpu_consuming_process
echo 2 memory_consuming_process
echo

read -p "Type in the number of the script you want to use: " input
echo

if [[ $input == 1 ]]; then
  clear
  ./cpu_consuming_process.sh
elif [[ $input == 2 ]]; then
  clear
  ./mem_consuming_process.sh
else
  echo Not a valid choice!
  echo use $cmd
fi
