#!/bin/bash
#Stop Container aws-devops
docker ps -aq --filter "name=aws-devops" | xargs docker stop
#Remove container aws-devops
docker ps -aq --filter "name=aws-devops" | xargs docker rm