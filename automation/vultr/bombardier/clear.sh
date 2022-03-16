#!/bin/bash

INSTANCES=$(vultr-cli instance list | grep stop-russia-bombardier | awk '{print $1}')

for instance in $INSTANCES
do
  vultr-cli instance delete $instance
done

SCRIPTS=$(vultr-cli script list | grep stop-russia-bombardier | awk '{print $1}')

for script in $SCRIPTS
do
  vultr-cli script delete $script
done
