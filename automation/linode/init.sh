#!/bin/bash

#get parameter of num droples
if [ $1 ]; then  NUMDROPLES=$1; else NUMDROPLES=1; fi

REGION=$(linode-cli regions list | grep ok | awk '{print $2}' | sort -R | head -n1)

# generate random hash for droplet name
if [[ $OSTYPE == "linux-gnu"* ]]; then
  HASH=$(date | md5sum | awk '{print $1}')
else
  HASH=$(date | md5)
  fi

linode-cli stackscripts create \
  --label stop-russia \
  --images "linode/ubuntu20.04" \
  --is_public false \
  --script userdata.sh

STACK_SCRIPT_ID=$(linode-cli stackscripts list --is_public false |  grep stop-russia | awk '{print $2}' | head -n1)

STACK_SCRIPT_DATA='{ "target": "$3"}'

echo $STACK_SCRIPT_DATA

for ((c=1; c<=NUMDROPLES; c++))
do
  linode-cli linodes create \
    --label "stop-russia-${HASH}-${c}" \
    --image linode/ubuntu20.04 \
    --tag "stop-russia" \
    --booted true \
    --root_pass "$2" \
    --stackscript_id $STACK_SCRIPT_ID \
    --stackscript_data $STACK_SCRIPT_DATA \
    --region $REGION \
    --type g6-nanode-1
done
