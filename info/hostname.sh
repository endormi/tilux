#!/bin/bash

echo Running hostname
echo ================
echo
sleep 1

echo Hostname : $(hostname -s)
sleep .5
echo DNS domain : $(hostname -d)
sleep .5
echo Local IP address : $(hostname -i)
