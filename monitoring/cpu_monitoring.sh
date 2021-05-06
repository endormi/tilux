#!/bin/bash

secs=3000
time=10
cproc=$(( $secs / $time ))

function cpu {
  echo
  echo
  echo CPU usage:
  cat /tmp/cpu_usage.$$ | sort -nrk 2 | head

  rm /tmp/cpu_usage.$$
  exit 0
}

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('CPU monitoring');"; fi
sleep 1

trap 'cpu' INT

echo Watching CPU usage...

for((i=0; i<$cproc; i++)); do
    ps -eocomm,pcpu | egrep -v '(0.0)|(%CPU)' >> /tmp/cpu_usage.$$
    sleep $time
done
cpu()
