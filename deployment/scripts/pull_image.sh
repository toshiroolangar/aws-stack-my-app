#!/bin/bash
#Login to the repo
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin ${account_id}.dkr.ecr.${region}.amazonaws.com
#Pull the image
docker pull ${ECR_REPO}:{BUILD_DATE}