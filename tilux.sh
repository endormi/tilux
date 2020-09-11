#!/bin/bash

<<comment

 Tilux by endormi (v.0.0.1)

 You can run the script interactively or by using arguments

 For interactive: run ./tilux.sh and follow the choices.
 For args: for example ./tilux.sh monitoring 1

comment

# ANSI-colors
r="\033[0;31m" # Red
b="\033[0;34m" # Blue
g="\033[0;32m" # Green
y="\033[1;33m" # Yellow
bl="\033[1;30m" # Black
w="\033[1;37m" # White

version="v.0.1.0"
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
sleep 3
echo


 # I used a function since i'm using the same text multiple times
info () {
  echo -e "\\e[0;47m${bl}Info\\e[0m${w}"
  echo 1: Hostname
  echo 2: IP address
  echo
}
monitoring () {
  echo -e "\\e[0;47m${bl}Monitoring\\e[0m${w}"
  echo 1: cpu_monitoring
  echo 2: mem_monitoring
  echo
}

if [[ -z "$1" ]]; then

  echo
  echo What script do you want to run?
  echo
  # paste <() <()
  info
  monitoring

  list_of_commands="Info && Monitoring"

  sleep .7
  echo Choices: $list_of_commands
  read -p "Type in the choice in which you want to run the script in: " choice
  choice="$(echo ${choice} | tr 'A-Z' 'a-z')"

  if [[ $choice == "monitoring" ]]; then
    cmd="1 or 2"
    clear
    monitoring
    read -p "Type in the number of the script you want to use: " input_process
    echo

    case "$input_process" in
      "1")
        clear
        ./monitoring/cpu_monitoring.sh
        ;;
      "2")
        clear
        ./monitoring/mem_monitoring.sh
        ;;
      *)
      echo Not a valid choice!
      echo Use $cmd
      exit
      ;;
    esac

  elif [[ $choice == "info" ]]; then
    cmd="1 or 2"
    clear
    info
    read -p "Type in the number of the script you want to use: " input_process
    echo

    case "$input_process" in
      "1")
        clear
        ./info/hostname.sh
        ;;
      "2")
        clear
        ./info/ip_addr.sh
        ;;
      *)
      echo Not a valid choice!
      echo Use $cmd
      exit
      ;;
    esac

  else
    echo
    echo Not a valid choice!
    echo Use $list_of_commands
  fi

else

  command="for example ./tilux.sh monitoring 1
  (same choices when used interactively)"

  case "$1" in
    "monitoring")
      case "$2" in
        "1")
          clear
          ./monitoring/cpu_monitoring.sh
          ;;
        "2")
          clear
          ./monitoring/mem_monitoring.sh
          ;;
        *)
        echo Not a valid choice!
        echo Use $command
        exit
          ;;
      esac
      ;;

    "info")
      case "$2" in
        "1")
          clear
          ./info/hostname.sh
          ;;
        "2")
          clear
          ./info/ip_addr.sh
          ;;
        *)
        echo Not a valid choice!
        echo Use $command
        exit
          ;;
      esac
      ;;
    *)
    echo Not a valid choice!
    echo Use $command
    exit
      ;;
  esac

fi
