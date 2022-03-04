#!/bin/bash

INSTANCES=$(linode-cli linodes list | grep stop-russia | awk '{print $2}')

for instance in $INSTANCES
do
  linode-cli linodes delete $instance
done

STACK_SCRIPTS=$(linode-cli stackscripts list --is_public false |  grep stop-russia | awk '{print $2}')

for script in $STACK_SCRIPTS
do
  linode-cli stackscripts delete $script
done
