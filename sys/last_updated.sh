#!/bin/bash

python3 -c "from logos import Logo; Logo('Last updated');"
ls -tp | grep -v /$ | head -1
