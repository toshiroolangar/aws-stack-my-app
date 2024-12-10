#!/bin/bash
image_uri=`jq .ImageURI /home/ec2-user/app/imageDefinitions.json  | sed -E 's/"//g'`
#Run container 
docker run -d \
  --name=aws-devops \
  -p 80:5000 \
  $image_uri