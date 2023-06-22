#!/bin/bash

if [[ "$1" == "tilux" ]]; then
  source $CATCH_SCRIPT_PATH
  python3 -c "from tools.logos import Logo; Logo('Default web browser');"
fi

browser=$(xdg-settings get default-web-browser)
echo -e "Your default browser is $browser\n"

# You shouldn't need to be root to run this
# I will do something with this at some point
# sudo update-alternatives --config x-www-browser
