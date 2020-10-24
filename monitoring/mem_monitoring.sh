#!/bin/bash

# top
# sar -r 1 2

secs=3000
time=10
mproc=$(( $secs / $time ))

function mem {
  echo
  echo
  echo Memory usage:
  cat /tmp/memory_usage.$$ | sort -nrk 2 | head

  rm /tmp/memory_usage.$$
  exit 0
}

python3 -c "from logos import Logo; Logo('Mem Monitoring');"
sleep 1

trap 'mem' INT

echo Watching Memory usage...

for((i=0; i<$mproc; i++)); do
    ps -eocomm,pmem | egrep -v '(0.0)|(%MEM)' >> /tmp/memory_usage.$$
    sleep $time
done
mem()
