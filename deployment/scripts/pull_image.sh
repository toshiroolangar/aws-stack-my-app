#!/bin/bash
#Login to the repo
image_uri=`jq .ImageURI ./imageDefinitions.json  | sed -E 's/"//g'`
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 167295297769.dkr.ecr.us-east-2.amazonaws.com/testspace/aws-devops
#Pull the image
docker pull $image_uri