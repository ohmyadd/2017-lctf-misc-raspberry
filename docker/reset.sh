#!/bin/bash

docker rm -f wd
docker rm -f sh

docker run -d --name sh lctf-sh
docker run -d --name wd --link=sh:sshd -e SSHDADDR='sshd' -e BEARYCHAT='https://hook.bearychat.com/=bwAOM/incoming/efae7b8decf4651eb8eece5efd78c273' -p 22:2222 -e SENSOR='LCTF' -v /home/ubuntu/log:/home/wetland/wetland/log  lctf-wd

