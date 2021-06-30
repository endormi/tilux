#!/bin/bash

# TODO: Terminal output

secs=3000
time=10
cproc=$(( $secs / $time ))

function cpu {
  echo -e "\nCPU usage (biggest resource drainers):"
  cat /tmp/cpu_usage.$$ | sort -nrk 2 | head

  rm /tmp/cpu_usage.$$
  exit
}

if [[ $1 == "tilux" ]]; then python3 -c "from tools.logos import Logo; Logo('CPU monitoring');"; fi
sleep 1

trap 'cpu' INT

echo Watching CPU usage...
echo -e "Check /tmp/cpu_usage.$$ \n"
echo "Pressing CTRL-C will display the biggest resource drainers sorted."

for((i=0; i<$cproc; i++)); do
    ps -eocomm,pcpu | egrep -v '(0.0)|(%CPU)' >> /tmp/cpu_usage.$$
    sleep $time
done
cpu()
