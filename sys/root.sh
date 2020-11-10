#!/bin/bash

python3 -c "from logos import Logo; Logo('Root');"

if [[ "$EUID" -eq 0 ]]; then
  echo "You are root."
else
  echo "You are not root."
fi
