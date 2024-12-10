#!/bin/bash
#Stop Container aws-devops test
aws-devops_container=`docker ps -a | grep "aws-devops" | wc -l`

if [[ $aws-devops_container -ne 0 ]]; then
    #Stop Container aws-devops
    docker ps -aq --filter "name=aws-devops" | xargs docker stop
    #Remove container aws-devops
    docker ps -aq --filter "name=aws-devops" | xargs docker rm
else 
    echo "There are no running containers"
fi