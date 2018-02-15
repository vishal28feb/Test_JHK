#!/bin/bash
eval "$(docker-machine env default)"
docker pull svishal/testcode
docker stop testcode
docker rm testcode
docker rmi svishal/testcode
docker run -d --name testcode --restart always -p 8080:8080 svishal/testcode
