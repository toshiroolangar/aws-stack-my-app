#!/bin/bash
running_app=`docker ps -aq | wc -l`

if [[ $running_app -eq 1 ]]; then
    #Stop Container aws-devops
    docker ps -aq --filter "name=aws-devops" | xargs docker stop
    #Remove container aws-devops
    docker ps -aq --filter "name=aws-devops" | xargs docker rm
else echo "There are no running containers"