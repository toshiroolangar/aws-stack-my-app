#!/bin/bash
image_uri=`jq .ImageURI imageDefinitions.json  | sed -E 's/"//g'`
#Run container 
docker run -d \
  --name=aws-devops \
  -p 80:5000 \
  $image_uri