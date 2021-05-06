#!/bin/bash

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('GPU name');"; fi

sleep .5
glxinfo | grep 'Device'
