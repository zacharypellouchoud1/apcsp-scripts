#!/bin/bash
list="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

count=$#
if [ $# -gt 0 ]
then
 list=$@
fi

for droplet in $list;
do
  if ping -c 1 -W 3 $droplet 2>&1 > /dev/null
  then
    echo $droplet : alive
  else
    echo $droplet : dead
  fi
done
