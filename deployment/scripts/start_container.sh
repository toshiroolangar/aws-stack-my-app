#!/bin/bash
#Run container 

docker run -d \
  --name=aws-devops \
  -p 80:5000 \
  ${ECR_REPO}:{BUILD_DATE}