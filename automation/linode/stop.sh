#!/bin/sh

while true; do
  # get random resource
  RESOURCE=$(shuf resources.txt | head -n1)

  # start bombing
  bombardier -c 1000 -d 3000s -l $RESOURCE
done
