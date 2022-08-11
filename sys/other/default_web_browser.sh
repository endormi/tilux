#!/bin/bash

[ "$1" == "tilux" ] && python3 -c "from tools.logos import Logo; Logo('Default web browser');"

browser=$(xdg-settings get default-web-browser)
echo -e "Your default browser is $browser\n"

# You shouldn't need to be root to run this
# I will do something with this at some point
# sudo update-alternatives --config x-www-browser
