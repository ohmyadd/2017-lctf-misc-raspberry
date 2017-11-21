#!/bin/bash

docker rm -f wd
docker rm -f sh

docker run -d --name sh lctf-sh
docker run -d --name wd --link=sh:sshd -e SSHDADDR='sshd' -p 22:2222 -e SENSOR='LCTF' -v /home/ubuntu/log:/home/wetland/wetland/log  lctf-wd

