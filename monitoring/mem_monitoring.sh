#!/bin/bash

# TODO: Terminal output

secs=3000
time=10
mproc=$(( $secs / $time ))

function mem {
  echo -e "\nMemory usage (biggest resource drainers):"
  cat /tmp/memory_usage.$$ | sort -nrk 2 | head

  rm /tmp/memory_usage.$$
  exit
}

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('Mem monitoring');"; fi
sleep 1

trap 'mem' INT

echo Watching Memory usage...
echo -e "Check /tmp/memory_usage.$$ \n"
echo "Pressing CTRL-C will display the biggest resource drainers sorted."

for((i=0; i<$mproc; i++)); do
    ps -eocomm,pmem | egrep -v '(0.0)|(%MEM)' >> /tmp/memory_usage.$$
    sleep $time
done
mem()
