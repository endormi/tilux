#!/bin/bash

python3 -c "from tools.logos import Logo; Logo('GPU Name');"

sleep .5
glxinfo | grep 'Device'
