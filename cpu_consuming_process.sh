#!/bin/bash

# top
# sar -r 1 2
# sar -P ALL 1 2

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

echo Running cpu_consuming_process
echo =============================
echo
sleep 1

trap 'cpu' INT

echo Watching CPU usage...

for((i=0; i<$cproc; i++)); do
    ps -eocomm,pcpu | egrep -v '(0.0)|(%CPU)' >> /tmp/cpu_usage.$$
    sleep $time
done
cpu()
